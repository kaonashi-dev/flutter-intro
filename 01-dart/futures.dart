void main() async {
  print('Start');

  httpRequest1().then((value) {
    print(value);
  }).catchError((err) {
    print('ERROR: $err');
  });

  try {
    final value = await httpRequest2();
    print(value);
  } on Exception catch (err) {
    print('CRITICAL ERROR: $err');
  } catch (err) {
    print('ERROR: $err');
  } finally {
    print('finally try-catch');
  }

  print('End');
}

Future<String> httpRequest1() {
  return Future.delayed(Duration(seconds: 1), () {
    // throw 'Http error';
    return 'Request1 response OK';
  });
}

Future<String> httpRequest2() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('Http error - Bad request');
  // throw 'Http error - Bad request';
  return 'Request2 response OK';
}
