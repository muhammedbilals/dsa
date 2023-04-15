import 'dart:collection';

// void main(List<String> args) {
//   Map<String, String> fruits = Map();
//   fruits["apple"] = "red";

//   for (var Key in fruits.keys) {
//     print(Key);
//   }
//   for (var value in fruits.values) {
//     print(value);
//   }
// }

// void main(List<String> arguments) {
//   Map<String, int> hashMap = {
//     'one': 1,
//     'two': 2,
//     'three': 3,
//     'four': 4,
//   };
//   int one = customHashfunction('one');
//   int two = customHashfunction('two');
//   int three = customHashfunction('three');
//   int four = customHashfunction('four');
//   // print(hashMap);
//   print('first element hashcode:  $one');
//   print('second element hashcode:  $two');
//   print('third element hashcode:   $three');
//   print('fourth element hashcode:  $four');
// }

addtohash(String key, int value, Map<int, int> hashmap) {
  int hash = 0;
  for (int i = 0; i < key.length; i++) {
    hash = hash + key.codeUnitAt(i);
  }
}

int customHashfunction(String key) {
  int hash = 0;
  for (int i = 0; i < key.length; i++) {
    hash = hash + key.codeUnitAt(i);
  }
  return hash;
}

void main() {
  Map<String, int> hashMap = {
    "key1": 10,
    "key2": 2,
    "key3": 3,
  };
  add(hashMap, 'key4', 5);
  length(hashMap);
  print(hashMap);
  contains(hashMap, 'key4');
  contains(hashMap, 'aslam');
}

//To add element in hashmap
add(Map<String, int> hashmap, String key, int value) {
  int hash = customHashfunction(key);
  hashmap[key] = value;
  print(key);
  print(hashmap['key1']);
}

//to find the lenght of the hashmap
int length(Map<String, int> hashMap) {
  int count = 0;
  hashMap.forEach(
    (key, value) {
      count++;
    },
  );
  print(count);
  return count;
}

//to find contains in hashmap
contains(Map<String, int> hashMap, String element) {
  bool contains = false;
  hashMap.forEach((key, value) {
    if (key == element) {
      contains = true;
    }
  });
  if (contains) {
    print('Yes that element contains in this map....');
  } else {
    print('No Thats not contains in this map.......');
  }
}


// class HashTable {
//   List<List<MapEntry<int, String>>> table;
//   int? size;

//   HashTable(int size) {
//     size = size;
//     table = List<List<MapEntry<int, String>>>(size);
//     for (int i = 0; i < size; i++) {
//       table[i] = List<MapEntry<int, String>>();
//     }
//   }

//   int hash(int key) {
//     return key % size;
//   }

//   void insert(int key, String value) {
//     int index = hash(key);
//     table[index].add(MapEntry(key, value));
//   }

//   String find(int key) {
//     int index = hash(key);
//     for (MapEntry<int, String> entry in table[index]) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }
//     return find(key);
//   }
// }

