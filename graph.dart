class Graph {
  final Map<int, List<int>> _adjacencyList;

  Graph() : _adjacencyList = {};

  void addEdge(int u, int v) {
    if (!_adjacencyList.containsKey(u)) {
      _adjacencyList[u] = [];
    }
    _adjacencyList[u]?.add(v);

    if (!_adjacencyList.containsKey(v)) {
      _adjacencyList[v] = [];
    }
    _adjacencyList[v]?.add(u);
  }

  List<int>? getNeighbors(int u) {
    if (!_adjacencyList.containsKey(u)) {
      return [];
    }
    return _adjacencyList[u];
  }

  bool? hasEdge(int u, int v) {
    if (!_adjacencyList.containsKey(u)) {
      return false;
    }
    return _adjacencyList[u]?.contains(v);
  }
}

void main() {
  final graph = Graph();

  graph.addEdge(1, 2);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(4, 1);

  final neighbors = graph.getNeighbors(2);
  print(neighbors); // Output: [1, 3]

  final hasEdge = graph.hasEdge(1, 3);
  print(hasEdge); // Output: false
}