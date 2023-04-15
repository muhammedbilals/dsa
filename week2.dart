sort(List arr, int low, int high) {
  while (low < high) {
    int p = partition(arr, low, high);
    sort(arr, low, p - 1);
    sort(arr, p + 1, high);
  }
}

int partition(List arr, int low, int high) {
  int pivot = arr[high];
  int i = low;
  int j = low;

  while (i <= high) {
    if (arr[i] <= pivot) {
      int temp = arr[i];
      arr[i] = arr[j];
      arr[i] = temp;
      j++;
    }
    i++;
  }
  return j - 1;
}

void main(List<String> args) {
  List arr = [1, 8, 5, 4, 2, 3, 9, 7];
  sort(arr, 0, arr.length - 1);
}

List insertionSort(List arr) {
  for (int i = 1; i < arr.length; i++) {
    int temp = arr[i];
    int j = i-1;
    while (j >= 0 && arr[j] < arr[i]) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = temp;
  }
  return arr;
}
