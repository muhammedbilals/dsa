import '1.dart';

main() {
  List<int> arr1 = [1, 2, 22, 56];

  List<int> arr2 = [3, 4, 21, 67];
  print(MergeTwoSortedArrays(arr1, arr2));
}

List MergeTwoSortedArrays(List arr1, List arr2) {
  List<int> neww = [];
  int i = 0;
  int j = 0;

  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] < arr2[j]) {
      neww.add(arr1[i]);
      i++;
    } else {
      neww.add(arr2[j]);

      j++;
    }
  }
  while (i < arr1.length) {
    neww.add(arr1[i]);
    i++;
  }
  while (j < arr2.length) {
    neww.add(arr2[j]);
    j++;
  }
  return neww;
}
