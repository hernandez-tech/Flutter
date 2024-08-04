void main() {
  streamNumbers().listen((value) {
    print("Stream value: $value");
  });
}


Stream<int> streamNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // print("Desde el Stream");
    return value;
  }).take(5);
}