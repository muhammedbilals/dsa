import 'dart:collection';

class Graph {
  Map<int, List<int>> vertices = {};
  Graph() {
    vertices = {};
  }
  void addVertex(int vertex) {
    if (!vertices.containsKey(vertex)) {
      vertices[vertex] = [];
    }
  }

  void addEdge(int vertex1, int vertex2) {
    if (vertices.containsKey(vertex1) && vertices.containsKey(vertex2)) {
      vertices[vertex1]!.add(vertex2);
      vertices[vertex2]!.add(vertex1);
    }
  }

  void removeVertex(int vertex) {
    vertices.remove(vertex);
    vertices.forEach((key, value) {
      value.remove(vertex);
    });
  }

  void removeEdge(int vertex1, int vertex2) {
    vertices[vertex1]!.remove(vertex2);
    vertices[vertex2]!.remove(vertex1);
  }

  List<int> getVertex() {
    return vertices.keys.toList();
  }

  List<int> getEdge(int vertex) {
    return vertices[vertex]!;
  }

  void bfs(int start) {
    Set<int> visited = Set();
    Queue<int> queue = Queue() ;

    visited.add(start);
    queue.add(start);

    while (queue.isNotEmpty) {
      int vertex = queue.removeFirst();
      print(vertex);

      for (int neighbor in vertices[vertex]!) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }

  // void dfserch(int start) {
  //   Set<int> visited = Set();
  //   List<int> result = [];

  //   void dfs(int vertex) {
  //     visited.add(vertex);
  //     result.add(vertex);
  //     for
  //   }
  // }
}
