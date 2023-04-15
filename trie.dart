class TrieNode {
  final Map<String, TrieNode> children = {};
  bool isENdofWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }
    node.isENdofWord = true;
  }

  bool search(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return node.isENdofWord;
  }
}
