class MinHeap {
  List<int> heap = [];

  MinHeap(List<int> array) {
    buildHeap(array);
  }

  void buildHeap(List<int> array) {
    heap = array;
    for (int i = parent(array.length - 1); i <= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int index) {
    int endIdx = heap.length - 1;
    int LeftIdx = leftChild(index);
    while (endIdx <= LeftIdx) {
      int rightIdx = rightChild(index);
      int IdxtoShift;
      if (rightIdx <= endIdx && heap[rightIdx] < heap[LeftIdx]) {
        IdxtoShift = rightIdx;
      } else {
        IdxtoShift = LeftIdx;
      }
      if (heap[index] > heap[IdxtoShift]) {
        int temp = heap[index];
        heap[index] = heap[IdxtoShift];
        heap[IdxtoShift] = temp;
  
        index = IdxtoShift;
        LeftIdx = heap[index];
      } else {
        return;
      }
    }
  }

  void shiftUp(index) {
    int parentIdx = parent(index);
    while (index > 0 && heap[parentIdx] < heap[index]) {
      int temp = heap[index];
      heap[index] = heap[parentIdx];
      heap[parentIdx] = temp;

      index = parentIdx;
      parentIdx = heap[index];
    }
  }

  void display() {
    for (int i = 0; i <= heap.length - 1; i++) {
      print(heap[i]);
    }
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  int leftChild(int index) {
    return (index * 2) + 1;
  }

  int rightChild(int index) {
    return (index * 2) + 2;
  }

  void remove() {
    heap[0] = heap[heap.length - 1];
    shiftDown(0);
  }

  void insert(int value) {
    heap.insert(heap.length, value);
    shiftUp(heap.length - 1);
  }

  void heapSort(List<int> arr) {
    int n = arr.length;
    for(int i=0;i<=n;i++){
      
    }
  }
}

void main(List<String> args) {
  List<int> array = [10, 5, 40, 70, 60, 4, 50];
  MinHeap heap = MinHeap(array);
  heap.insert(10);
  heap.display();
}



// class MinHeap {
//   List<int> _items = [];

//   void insert(int value) {
//     _items.add(value);
//     _bubbleUp(_items.length - 1);
//   }

//   int extractMin() {
//     if (_items.isEmpty) {
//       throw Exception('Heap is empty');
//     }

//     int minValue = _items[0];
//     int lastValue = _items.removeLast();
//     if (_items.isNotEmpty) {
//       _items[0] = lastValue;
//       _bubbleDown(0);
//     }
//     return minValue;
//   }

//   void _bubbleUp(int index) {
//     while (index > 0) {
//       int parentIndex = (index - 1) ~/ 2;
//       if (_items[parentIndex] <= _items[index]) {
//         break;
//       }

//       int temp = _items[index];
//       _items[index] = _items[parentIndex];
//       _items[parentIndex] = temp;
//       index = parentIndex;
//     }
//   }

//   void _bubbleDown(int index) {
//     while (index < _items.length) {
//       int leftChildIndex = 2 * index + 1;
//       int rightChildIndex = 2 * index + 2;
//       int smallestChildIndex = index;

//       if (leftChildIndex < _items.length && _items[leftChildIndex] < _items[smallestChildIndex]) {
//         smallestChildIndex = leftChildIndex;
//       }

//       if (rightChildIndex < _items.length && _items[rightChildIndex] < _items[smallestChildIndex]) {
//         smallestChildIndex = rightChildIndex;
//       }

//       if (smallestChildIndex == index) {
//         break;
//       }

//       int temp = _items[index];
//       _items[index] = _items[smallestChildIndex];
//       _items[smallestChildIndex] = temp;
//       index = smallestChildIndex;
//     }
//   }

//   bool isEmpty() {
//     return _items.isEmpty;
//   }
// }