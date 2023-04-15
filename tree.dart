class BinarySearchTree {

  void insert(int data) {
    Node? currentNode = root;
    if (currentNode == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < currentNode!.data!) {
        if (currentNode.left == null) {
          currentNode.left = Node(data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        } else {
          currentNode = currentNode.right;
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

  void remove(int data) {
    removeHelper(data, root!, null);
  }

  void removeHelper(int data, Node? currentNode, Node? parentNode) {
    while (currentNode != null) {
      if (data < currentNode.data!) {
        parentNode = currentNode;
        currentNode = currentNode.left!;
      } else if (data > currentNode.data!) {
        parentNode = currentNode;
        currentNode = currentNode.right!;
      } else {
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getMinVal(currentNode.right!);
          removeHelper(currentNode.data!, currentNode.right!, currentNode);
        } else {
          if (parentNode == null) {
            if (currentNode.data == null) {
              root = currentNode.left;
            } else {
              root = currentNode.right;
            }
          } else {
            if (parentNode.left == currentNode) {
              if (currentNode.right == null) {
                parentNode.left = currentNode.left;
              } else {
                parentNode.left = currentNode.right;
              }
            } else {
              if (currentNode.right == null) {
                parentNode.right = currentNode.left;
              } else {
                parentNode.right = currentNode.right;
              }
            }
          }
        }
      }
    }
  }

  int getMinVal(Node currentNode) {
    if (currentNode.left == null) {
      return currentNode.data!;
    } else {
      return getMinVal(currentNode.left!);
    }
  }
}

Node? root;

class Node {
  int? data;
  Node? left;
  Node? right;
  Node(this.data) {}
}

void main(List<String> args) {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(10);
  tree.insert(8);
  tree.insert(11);
  // tree.remove(11);
  print(tree.contains(8));
}
