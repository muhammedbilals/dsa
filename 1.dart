// void main(List<String> args) {
//   String word = 'malayalam';
//   List array = word.split('').toList();
//   for (int i = 0; i < array.length; i++) {
//     if (array[i] == 'm') {
//       array[i] = 'x';
//     }
//   }

//   print(array.join());
// }
// void main(List<String> args) {
//   String word = 'malayalam';
//   List array = word.split('').toList();
//   for (int i = 0; i < array.length; i++) {
//     if (array[i] == 'm') {
//       array[i] = 'g';
//     }
//   }
//   print(array.join());
// }
void main(List<String> args) {
  binarySearch(arr, 60);
}

List arr = [10, 20, 30, 40, 50, 60, 70, 80, 90];
int start = 0;
int end = arr.length - 1;

int binarySearch(List arr, int target) {
  int mid = (start + end) ~/ 2;
  while (start < end) {
    if (arr[mid] == target) {
      print(arr[mid]);
      return mid;
    }
    if (  target<arr[mid]) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
    print(arr[mid]);
   
  }

  return -1;
}
