class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(this.data) {}
}

class Dlinked {
  Node? head;
  Node? tail;

  void createNode(int data) {
    Node NewNode = new Node(data);
    Node temp = head!;
    if (temp == null) {
      head = NewNode;
      tail = NewNode;
    } else {
      tail!.next = NewNode;
    }
    tail = NewNode;
  }
}
