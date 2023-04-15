class Node {
  int? data;

  Node? next;

  Node(int this.data) {}
}

Node? frond;
Node? rear;

class queue {
  void enqueue(int data) {
    Node NewNode = Node(data);
    if (frond == null) {
      frond = NewNode;
      rear = NewNode;
      return;
    }
    rear!.next = NewNode;
    rear = NewNode;
  }

  void dequeue() {
    if (frond == null) {
      return;
    }
    frond = frond!.next;
  }

  void display() {
    Node? current = frond;

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main(List<String> args) {
  queue queuew = queue();
  queuew.enqueue(1);
  queuew.enqueue(2);
  queuew.enqueue(3);
  queuew.dequeue();
  queuew.dequeue();
  queuew.display();
}
