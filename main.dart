import 'bubble_sort.dart';
import 'insertion_sort.dart';
import 'merge_sort.dart';
import 'quick_sort.dart';

void main() {
  final arr = [12, -5, 8, 3, -24, 0, 54, 35, 99];
  print(arr);
  // bubbleSort(arr);
  quickSort(arr, 0, arr.length - 1);
  print(arr);
}
