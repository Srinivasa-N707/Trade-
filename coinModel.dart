import 'package:flutter/material.dart';

class Coin {
  Coin({
    @required this.name,
    @required this.symbol,
    @required this.imageUrl,
    @required this.high,
    @required this.low,
    @required this.open,
    @required this.close,
    @required this.change,
    @required this.changePercentage,
    @required this.volume,
  });

  String name;
  String symbol;
  String imageUrl;
  num volume;
  num high;
  num low;
  num open;
  num close;
  num change;
  num changePercentage;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      name: json['name'],
      symbol: json['symbol'],
      imageUrl: json['image'],
      high: json['high_24h'],
      low: json['low_24h'],
      open: (json['current_price']) - (json['price_change_24h']),
      close: json['current_price'],
      change: json['price_change_24h'],
      volume: json['total_volume'],
      changePercentage: json['price_change_percentage_24h'],
    );
  }
}

List<Coin> coinList = [];
