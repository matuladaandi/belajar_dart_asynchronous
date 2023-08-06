Future<String> sayHello(String name) {
  return Future.error(Exception('upss'));
  // return Future.value('hello $name');
}

void main(List<String> args) {
  sayHello('andi')
      .whenComplete(() =>
          print('done future')) // akan di eksekusi walau sukses ataupun gagal
      .then((value) => print(value))
      .catchError((error) => print("error with message ${error.message}"));
  print('done');
}
