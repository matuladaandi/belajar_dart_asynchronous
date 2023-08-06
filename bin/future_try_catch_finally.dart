Future<String> sayHello(String name) {
  return Future.error(Exception('upss'));
}

void main(List<String> args) {
  sayHello('andi')
      .then((value) => print(value))
      .catchError((error) => print("error with message ${error.message}"))
      .whenComplete(() => print("all done"));
  print('done');
}
