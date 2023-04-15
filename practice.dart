import 'hashmap.dart';

List mergeSort(List arr, int low, int high, List temp) {
  int mid = (low + (high - low) / 2).floor();
  if (low < high) {
    mergeSort(arr, low, mid, temp);
    mergeSort(arr, mid + 1, high, temp);
    merge(arr, temp, low, high, mid);
  }
  return arr;
}

merge(List arr, List temp, int low, int high, int mid) {
  for (int i = 0; i < arr.length; i++) {
    temp[i] = arr[i];
  }
  int i = low;
  int j = mid + 1;
  int k = low;

  while (i <= mid && j <= high) {
    if (temp[i] <= temp[j]) {
      arr[k] = temp[i];
      i++;
    } else {
      arr[k] = temp[j];
      j++;
    }
    k++;
  }
  while (i <= mid) {
    arr[k] = temp[i];
    k++;
    i++;
  }
  //  while (j < high) {
  //     arr[k] = temp[i];
  //     k++;
  //     j++;
  //   }
}

addhash(Map<String, int> hashmap, String key, int value) {
  hashmap[key] = value;
}

contains(Map<String, int> hashmap, String element) {
  bool contains = false;
  hashmap.forEach((key, value) {
    if (key == element) {
      contains = true;
    }
    if (contains = true) {
      print('available');
    } else {
      print('not available');
    }
  });
}

quicksrort(List arr, int low, int high) {
  while (low < high) {
    int? p = partition(arr, low, high);
    quicksrort(arr, low, p! - 1);
    quicksrort(arr, p + 1, high);
  }
}

int? partition(List arr, int low, int high) {
  int pivot = arr[high];
  int i = low;
  int j = low;
  while (i <= high) {
    if (arr[i] <= pivot) {
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
      j++;
    }
    i++;
  }
  return j - 1;
}

List insertionSort(List arr) {
  for (int i = 1; i < arr.length; i++) {
    int temp = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > temp) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = temp;
  }
  return arr;
}

List selectionSort(List arr) {
  int temp = 0;
  for (int i = 0; i < arr.length; i++) {
    int min = i;
    for (int j = 0; j < arr.length; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
      temp = arr[j];
      arr[j] = arr[min];
      arr[min] = temp;
    }
  }
  return arr;
}

List bubbleSort(List arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

quichsort(List arr, int low, int high) {
  while (low < high) {
    int p = partition11(arr, low, high);
    quichsort(arr, low, p - 1);
    quichsort(arr, p + 1, high);
  }
  return arr;
}

partition11(List arr, int low, int high) {
  int pivot = arr[high];
  int i = low;
  int j = low;

  while (i <= high) {
    if (arr[i] <= pivot) {
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
      j++;
    }
    i++;
  }
  return j - 1;
}

List merge11(List arr, List temp, int low, int high) {
  while (low < high) {
    int mid = (low - (high - low) / 2).floor();
    merge11(arr, temp, low, mid);
    merge11(arr, temp, mid + 1, high);
    mergesort11(arr, temp, low, high, mid);
  }
  return arr;
}

mergesort11(List arr, List temp, int low, int high, int mid) {
  int i = low;
  int j = mid + 1;
  int k = low;
  for (int i = 0; i < arr.length; i++) {
    temp[i] = arr[i];
  }

  while (i <= mid && j <= high) {
    if (temp[i] < temp[j]) {
      arr[k] = temp[i];
      i++;
    } else {
      arr[k] = temp[j];
    }
    k++;
  }
  while (i <= mid) {
    arr[k] = temp[i];
    i++;
    k++;
  }
}

void main(List<String> args) {
  List arr = [10, 80, 70, 20, 90, 40, 30, 10];
  List temp = List.filled(arr.length, null, growable: false);
  // print(mergeSort(arr, 0, arr.length - 1, temp));
  // print(quicksrort(arr, 0, arr.length - 1));
  // print(insertionSort(arr));
  // print(selectionSort(arr));
  // print(bubbleSort(arr));

  Map<String, int> hashmap = {'key1': 1};
  add(hashmap, 'key1', 1);
  contains(hashmap, 'key1');
  print(hashmap);

  // print(quichsort(arr, 0, arr.length - 1));
  print(merge11(arr, temp, 0, arr.length - 1));
}
