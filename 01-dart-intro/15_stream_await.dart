void main(){
  emitNumbers()
    .listen((value) {
      print("Stream value: $value");
    });
}

Stream emitNumbers() async* {
  final List<int> valuesToEmit = [1,2,3,4,5];
  
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 5));
    yield i;
  }
}