void main() {
  print(hello());
  print('Total: ${addTwoNumbersOptional(10)}');
  print(greetPerson(name: 'Developer'));
  print(greetPerson(name: 'Developer', message: 'Hola,'));
}

String hello() => 'Hello everyone!!!';

int addTwoNumbersOptional(int a, [int b = 0]) {
  // b ??= 0;
  return a + b;
}

String greetPerson({required String name, String message = 'Hello,'}) {
  return '$message $name';
}
