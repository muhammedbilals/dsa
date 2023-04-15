void main(List<String> args) {


  f(5);
}

int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return (n * factorial(n - 1));
  }
}

f(n) {
  if (n <= 1) {
    return 1;
  }

  f(n - 1);
  print(n);
  // f(n - 1);
}
