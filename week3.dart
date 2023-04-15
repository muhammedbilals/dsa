// class BinarySearchTree11 {
//   Node? currentNode;

//   void insert(int data) {
//     Node? root = currentNode;
//     // if (currentNode == null) {
//     //   return;
//     // }
//     while (currentNode != null) {
//       root = currentNode;
//       if (data < currentNode!.data) {
//         currentNode!.left!.data = currentNode!.data;
//       } else {
//         currentNode = currentNode!.left!;
//       }
//       if (data < currentNode!.data) {
//         currentNode!.right!.data = data;
//       } else {
//         currentNode = currentNode!.right!;
//       }
//     }
//   }

//   void printInorder(Node root) {
//     inorder(root);
//   }

//   void preOrder(Node root) {
//     print(root);
//     preOrder(root.left!);
//     preOrder(root.right!);
//   }

//   void postOrder(Node root) {
//     preOrder(root.left!);
//     preOrder(root.right!);
//     print(root);
//   }

//   void inorder(Node root) {
//     preOrder(root.left!);
//     print(root);
//     preOrder(root.right!);
//   }
// }

// class Node {
//   int data;
//   Node? left;
//   Node? right;
//   Node(this.data) {}
// }

// void main(List<String> args) {
//   BinarySearchTree11 bst = BinarySearchTree11();

//   bst.insert(10);
//   bst.insert(20);
//   bst.insert(30);
//   bst.insert(40);
//   bst.printInorder(bst.currentNode!);
// }
