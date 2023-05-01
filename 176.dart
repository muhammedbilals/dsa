// class Solution {
//   bool isSwapped = false;
//   String largestNumber(List<int> nums) {
//     String asn = nums.join('');
//     List<int> parsed = [];
//     for (var i = 0; i < asn.length; i++) {
//     parsed.add(asn[i]);
      
//     }
//     // final List<int> newList = asn.map((e)=>int.parse(e)).toList();

//     print(asn.length);
//     for (int i = 0; i < parsed.length; i++) {
//       for (int j = 0; j < parsed.length - i - 1; j++) {
//         if (parsed[j] > parsed[j + 1]) {
//           int temp = parsed[j];
//           parsed[j] = parsed[j + 1];
//           parsed[j + 1] = temp;
//           isSwapped = true;
//         }
//         if (isSwapped = false) {
//           break;
//         }
//       }
//     }

//     return parsed;
//   }
// }

// void main(List<String> args) {
//   List<int> nums = [10, 2];
//   Solution sol = Solution();
//   sol.largestNumber(nums);
// }
