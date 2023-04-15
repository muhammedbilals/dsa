// class Node {
//   int? data;

//   Node? next;

//   Node(int this.data) {}
// }

// Node? top;

// class Stack {
//   void push(int data) {
//     Node newNode = Node(data);
//     if (top == null) {
//       top = newNode;
//     } else {
//       newNode.next = top;
//       top = newNode;
//     }
//   }

//   void pop() {
//     if (top == null) {
//       print('stack overflow');
//     }
//     top = top!.next;
//   }

//   void display() {
//     Node? current = top;

//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }
class Node {
  String? data;

  Node? next;

  Node(String this.data) {}
}

Node? top;

class Stack {
  void push(String data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top == null) {
      print('stack overflow');
    }
    top = top!.next;
  }

  void display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main(List<String> args) {
  var string = 'bilal';
  var str = string.split('');
  Stack stack = Stack();
  for (int i = 0; i < str.length; i++) {
    stack.push(str[i]);
  }
  stack.pop();
  stack.pop();
  stack.display();
}
