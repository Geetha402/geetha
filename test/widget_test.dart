
void main() async {
  print(await testStream().join(','));
}
Stream<int> testStream() async* {
  yield 5;
  yield 10;
  yield 15;
  yield 20;
}