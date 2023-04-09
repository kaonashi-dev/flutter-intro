void main() async {
  print('Start');

  emitNumbers().listen((value) {
    print('Stream1 value $value');
  });

  emitVocal().listen((value) {
    print('Stream2 value $value');
  });

  print('End');
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(10);
}

Stream<String> emitVocal() async* {
  final valuesToEmit = ['a', 'e', 'i', 'o', 'u'];
  for (var i = 0; i < valuesToEmit.length; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield (valuesToEmit[i]);
  }
}
