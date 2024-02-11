import 'binary_search.dart';

void main() {
  // final arr = [12, -5, 8, 3, -24, 0, 54, 35, 99];
  // print(arr);
  // quickSort(arr, 0, arr.length - 1);

  final arrSorted = [-24, -5, 0, 3, 8, 12, 35, 54, 99];
  final i = binarySearch(arrSorted, 54);
  print(i);
}
