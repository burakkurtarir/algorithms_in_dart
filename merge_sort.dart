void mergeSort(List<int> arr) {
  int n = arr.length;

  if (n > 1) {
    int mid = (n / 2).floor();
    List<int> left = arr.sublist(0, mid);
    List<int> right = arr.sublist(mid, n);

    mergeSort(left);
    mergeSort(right);
    merge(arr, left, right);
  }
}

void merge(List<int> arr, List<int> left, List<int> right) {
  int i = 0;
  int j = 0;
  int k = 0;

  // Merging temporary arrays back into arr[]
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      arr[k] = left[i];
      i++;
    } else {
      arr[k] = right[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of left[], if there are any
  while (i < left.length) {
    arr[k] = left[i];
    i++;
    k++;
  }

  // Copy the remaining elements of right[], if there are any
  while (j < right.length) {
    arr[k] = right[j];
    j++;
    k++;
  }
}
