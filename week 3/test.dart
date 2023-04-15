import 'dart:collection';

import '../queue.dart';

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

  List<int> getVertex() {
    return vertices.keys.toList();
  }

  void bfs(int start) {
    Set<int> visited = Set();
    Queue<int> queue = Queue();

    visited.add(start);
    queue.add(start);

    while (queue.isNotEmpty) {
      int vertex = queue.removeFirst();
      for (int neighbor in vertices[vertex]!) {
        queue.add(neighbor);
        
      }
    }
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
  graph.getVertex();
}
