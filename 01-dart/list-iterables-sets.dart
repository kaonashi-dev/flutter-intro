void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9];

  print("""
    List original $numbers
    Length ${numbers.length}
    Index 0 ${numbers[0]}
  """);

  final reversedNumbers = numbers.reversed;

  print("""
    Iterable $reversedNumbers
    List ${reversedNumbers.toList()}
    Set ${reversedNumbers.toSet()}
  """);

}
