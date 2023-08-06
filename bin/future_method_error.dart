Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    // return "hello $name";
    throw Error();
  });
}

void main(List<String> args) {
  sayHello('andi')
  .onError((error, stackTrace) => "fallback") // tetap dieksekusi walaupun error karna errornya tadi sudah di ganti menjadi fallback
  .then((value) => print(value)); // ketika sudah didapatkan datanya maka diprint
  print('done');
}
