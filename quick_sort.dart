void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

// Function to find the partition position
int partition(List<int> arr, int low, int high) {
  // Choose the rightmost element as pivot
  int pivot = arr[high];

  // Pointer for greater element
  int i = low - 1;

  // Traverse through all elements and compare each element with pivot
  for (int j = low; j < high; j++) {
    if (arr[j] <= pivot) {
      i++;
      swap(arr, i, j);
    }
  }

  // Swap pivot with the greater element specified by i
  // Basically we move pivot to the right side of the list that's why we swap
  swap(arr, i + 1, high);

  // return partition position
  return i + 1;
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
