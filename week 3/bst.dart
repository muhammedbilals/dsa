import 'dart:collection';

import '../queue.dart';

class Node {
  int? data;
  Node? left;
  Node? right;
  Node(this.data);
}

Node? root;

class BinarySearchTree2 {
  void insert(int data) {
    if (root == null) {
      root = Node(data);
      return;
    }
    Node currentNode = root!;
    while (true) {
      if (data < currentNode.data!) {
        if (currentNode.left == null) {
          currentNode.left = Node(data);
          break;
        } else {
          currentNode = currentNode.left!;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        } else {
          currentNode = currentNode.right!;
        }
      }
    }
  }

  bool contains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data < currentNode.data!) {
        currentNode = currentNode.left;
      } else if (data > currentNode.data!) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  Node? deleteNode(Node? root, int data) {
    
    if (root == null) {
      return null;
    }
    if (root.data! > data) {
      root.left = deleteNode(root.left, data);
    } else if (root.data! < data) {
      root.right = deleteNode(root.right, data);
    } else {
      if (root.left == null) {
        return root.right;
      }
      if (root.right == null) {
        return root.left;
      }
      root.data = findMin(root.right!);
      root.right = deleteNode(root.right, root.data!);
    }
    return root;
  }

  int findMin(Node root) {
    while (root.left != null) {
      root = root.left!;
    }
    return root.data!;
  }

  void inOrder(Node root) {
    if (root != null) {
      inOrder(root.left!);
      print(root);
      inOrder(root.right!);
    }
  }

  void bfs(Node root) {
    if (root == null) {
      return;
    }
    Queue<Node> queue = Queue();
    queue.add(root);
    while (queue.isNotEmpty) {
      Node node = queue.removeFirst();
      print(node.data);

      if (node.left != null) {
        queue.add(node.left!);
      }
            if (node.right != null) {
        queue.add(node.right!);
      }
    }
  }
  void findClosest(Node root,int target){
    
  }
}

void main(List<String> args) {
  BinarySearchTree2 bst = BinarySearchTree2();
  bst.insert(10);
  bst.insert(8);
  bst.insert(30);
  bst.insert(80);
  bst.insert(19);
  // bst.deleteNode(root, 19);
  // print(bst.contains(19));
  bst.inOrder(root!);
}
