import 'coinModel.dart';

bool hammerFilter(int index, List<Coin> coinList) {
  if ((coinList[index].close.toDouble() > coinList[index].open.toDouble()) &&
      ((coinList[index].close.toDouble() - coinList[index].open.toDouble()) *
              3) <
          (coinList[index].open.toDouble() - coinList[index].low.toDouble()) &&
      (coinList[index].high.toDouble() - coinList[index].close.toDouble()) <
          (coinList[index].close.toDouble() -
              coinList[index].open.toDouble())) {
    return true;
  }

  return false;
}

bool volumeFilter(int index, List<Coin> coinList) {
  if ((coinList[index].volume.toDouble() > 6259775711)) return true;
  return false;
}
// if ((coinList[index].volume.toDouble() *
//         ((coinList[index].close.toDouble() - coinList[index].low.toDouble()) -
//             (coinList[index].high.toDouble() -
//                 coinList[index].close.toDouble())) /
//         (coinList[index].high.toDouble() - coinList[index].low.toDouble())) /
//     coinList[index].volume.toDouble()) return true;
