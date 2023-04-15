Function selectionSort(List arr) {
  int temp = 0;
  for (int i = 0; i < arr.length; i++) {
    int min = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] > arr[min]) {
        // temp = arr[j];
        // arr[j] = arr[min];
        // arr[min] = temp;
        min = j;
      }
      temp = arr[j];
      arr[j] = arr[min];
      arr[min] = temp;
    }
    // min = i + 1;
  }
  return selectionSort(arr);
}

List mergeTwoSortedArrays(List arr1, List arr2, int n, int m) {
  List<int> result = [n + m];

  int i = 0;
  int j = 0;
  int k = 0;
  while (i < n && j < m) {
    if (arr1[i] < arr2[j]) {
      result[k] = arr1[i];
      i++;
    } else {
      result[k] = arr2[j];
      j++;
    }
    k++;
  }
  return result;
}

class MergeSort {
  void sort(List arr1, List temp, int low, int high) {
    if (low < high) {
      int mid = (low + (high - low) / 2).floor();
      sort(arr1, temp, low, mid);
      sort(arr1, temp, mid + 1, high);
      merge(arr1, temp, low, mid, high);
    }
  }

  void merge(List arr, List temp, int low, int mid, int high) {
    for (int i = low; i < high; i++) {
      temp[i] = arr[i];
    }
    int i = low;
    int j = mid + 1;
    int k = low;
    while (i <= mid && j <= high) {
      if (temp[i] < temp[j]) {
        arr[k] = temp[i];
        i++;
      } else {
        arr[k] = temp[j];
        j++;
      }
      k++;
    }
    while (i < mid) {
      arr[k] = temp[i];
      i++;
      k++;
    }
  }
}

class QuickSort {
  List sort(List arr, int low, int high) {
    if (low < high) {
      int p = partition(arr, high, low);
      sort(arr, low, p - 1);
      sort(arr, p + 1, high);
    }
    return arr;
  }

  partition(List arr, int high, int low) {
    int pivot = arr[high];
    int j = low;
    int i = low;
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
}

class BubbleSort {
  List bubbleSort(List arr) {
    bool isSwapped = false;
    for (int i = 0; i < arr.length; i++) {
      for (int j = 0; j < arr.length - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
          isSwapped = true;
        }
      }
      if (isSwapped = false) {
        break;
      }
    }
    return arr;
  }
}

class InsertionSort {
  List insertionSort(List arr) {
    for (int i = 1; i < arr.length; i++) {
      int temp = i;
      int j = i - 1;
      while (j >= 0 && arr[j] > temp) {
        arr[j + 1] = arr[j];
        j = j - 1;
      }
      arr[j + 1] = temp;
    }
    return arr;
  }
}

void main(List<String> args) {
  List temp = [];
  List arr = [9, 8, 7, 6, 5, 4, 3, 2, 1];
  List arr1 = [1, 9, 3, 8, 85, 7, 39, 34];

  print(selectionSort(arr1));
  // print(mergeTwoSortedArrays(arr, arr1, arr.length, arr1.length));
  MergeSort ms = MergeSort();
  ms.sort(arr1, temp, 0, arr.length-1);
  QuickSort qs = QuickSort();
  // print(qs.sort(arr, 0, arr.length - 1));

  BubbleSort bs = BubbleSort();
  // print(bs.bubbleSort(arr1));
  InsertionSort Is = InsertionSort();
  // print(Is.insertionSort(arr));

  print(selectionSort(arr1));
  quiickSort2 qs2 = quiickSort2();
  // qs2.sort(arr1, 0, arr1.length);
}

class quiickSort2 {
  int partition(List arr, int low, int high) {
    int pivot = arr[high];
    int i = low;


    
    int j = low;
    while (i <= high) {
      if (arr[i] >= pivot) {
        int tempp = arr[i];
        arr[i] = arr[j];
        arr[j] = tempp;
        j++;
      }
      i++;
    }
    return j - 1;
  }

  sort(List arr, int low, int high) {
    while (low < high) {
      int p = partition(arr, low, high);
      sort(arr, low, p - 1);
      sort(arr, p + 1, high);
    }
  }
}
