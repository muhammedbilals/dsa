import 'dart:collection';

class Graph {
  Map<int, List<int>> vertices = {};
  Graph() {
    vertices = {};
  }
  void addVertex(int vartex) {
    if (!vertices.containsKey(vartex)) {
      vertices[vartex] = [];
    }
  }
  

  void addEdge(int vertex1, int vertex2) {
    if (vertices.containsKey(vertex1) && vertices.containsKey(vertex2)) {
      vertices[vertex1]!.add(vertex2);
      vertices[vertex2]!.add(vertex1);
    }
  }

  void removeVertx(int vertex) {
    vertices.remove(vertex);
    vertices.forEach((key, value) {
      value.remove(vertex);
    });
  }

  void removeEdge(int vertex1, int vertex2) {
    vertices[vertex1]!.remove(vertex2);
    vertices[vertex2]!.remove(vertex1);
  }

  List<int> getVertix() {
    return vertices.keys.toList();
  }

  List<int>? getEdge(int vertex) {
    return vertices[vertex];
  }

  void bfs(int start) {
    Set<int> visited = Set<int>();
    Queue<int> queue = Queue<int>();

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

  List<int> depthfs(int start) {
    Set<int> visited = {};
    List<int> result = [];
    void dfs(int vertex) {
      visited.add(vertex);
      result.add(vertex);
      for (int neighbor in vertices[vertex]!) {
        if (!visited.contains(neighbor)) {
          dfs(neighbor);
        }
      }
    }

    dfs(start);
    return result;
  }
}

void main(List<String> args) {
  Graph graph = Graph();
  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);
  graph.addEdge(1, 2);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(4, 1);

  // print(graph.getEdge(1));
  // print(graph.getVertix());
  // graph.bfs(1);
  print(graph.depthfs(1));
}
