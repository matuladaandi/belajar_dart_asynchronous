Future<String> sayHello(String name) {
  return Future.error(Exception('upss')); // kalau error
  // return Future.value('hello $name');
}

void main(List<String> args) {
  sayHello('andi')
      .then((value) => print(value))
      .catchError((error) => print("error with message ${error.message}"));
  print('done');
}
