class minHeap {
  List<int> heap = [];
  minHeap(List<int> arr) {
    builtHeap(arr);
  }
  void builtHeap(List<int> arr) {
    heap = arr;
    for (int i = parent(arr.length - 1); i < 0; i++) {
      shiftDown(i);
    }
  }

  void shiftDown(int index) {
    int endIndex = heap.length - 1;
    int leftIndexx = leftIndex(index);
    while (endIndex <= leftIndexx) {
      int inxToShift;
      int rightIndexx = rightIndex(index);

      if (rightIndexx <= endIndex && heap[rightIndexx] < heap[leftIndexx]) {
        inxToShift = leftIndexx;
      } else {
        inxToShift = rightIndexx;
      }
      if (heap[inxToShift] < heap[index]) {
        int temp = heap[index];
        heap[index] = heap[inxToShift];
        heap[inxToShift] = temp;

        index = inxToShift;
        leftIndexx = leftIndex(index);
      }
    }
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  int leftIndex(int index) {
    return (index * 2) + 1;
  }

  int rightIndex(int index) {
    return (index * 2) + 2;
  }
}
