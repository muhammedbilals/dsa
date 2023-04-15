void main(List<String> args) {
  List arr = [1, 2, 2, 4, 5, 6, 7, 8];
  SlinkedList list = SlinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(20);
  list.addNode(40);
  list.addNode(50);
  list.addNode(60);
  list.removeNodeAtEnd();
  // list.insetNodeAtStart(50);
  // list.insetNodeAtEnd(80);
  // list.insertAfter(77, 30);
  // list.insertBefore(30, 77);
  // list.deleteDuplicate();
  // list.convertArray(arr);
  // list.deleteDuplicate();
  list.display();
}

class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data) {}
}

class SlinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node NewNode = new Node(data);

    if (head == null) {
      head = NewNode;
      tail = NewNode;
    } else {
      tail!.next = NewNode;
    }
    tail = NewNode;
  }

  void display() {
    if (head == null) {
      print('list null');
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next!;
    }
  }

  void insetNodeAtStart(int data) {
    Node NewNode = new Node(data);
    Node? temp = head;
    NewNode.next = temp;
    head = NewNode;
  }

  void insetNodeAtEnd(int data) {
    Node NewNode = new Node(data);
    tail!.next = NewNode;
    tail = NewNode;
  }

  void removeNodeAtEnd() {
    Node? temp = head;
    // Node NewNode = new Node(data);
    // tail!.prev = null;
    // tail = tail!.prev;
    // while(temp!=null&&)
    while (temp != null && temp.data == tail) {
      tail = temp;
    }
  }

  void insertAfter(int data, int NextTo) {
    Node NewNode = new Node(data);
    Node? temp = head;

    while (temp != null && temp.data != NextTo) {
      temp = temp.next;
    }
    NewNode.next = temp!.next!;
    temp.next = NewNode;
  }

  void insertBefore(int nextTo, int data) {
    Node NewNode = new Node(data);
    Node? temp = head;
    Node? prev = null;
    while (temp != null && temp.data != nextTo) {
      prev = temp;
      temp = temp.next!;
    }
    NewNode.next = temp;
    prev!.next = NewNode;
  }

  void deleteDuplicate() {
    // Node NewNode = new Node(data);
    Node? temp = head;
    Node? prev = null;
    Node? next = temp!.next!;
    while (temp != null && temp != next) {
      prev = temp;
      temp = temp.next;
    }
    prev!.next = next.next;
    if (temp == tail) {
      tail = temp;
    }
  }

  void convertArray(List arr) {
    Node? temp = head;
    for (int i = 0; i < arr.length; i++) {
      Node NewNode = new Node(arr[i]);
      if (head == null) {
        head = NewNode;
        tail = NewNode;
      } else {
        tail!.next = NewNode;
        tail = NewNode;
      }
    }
  }
}
