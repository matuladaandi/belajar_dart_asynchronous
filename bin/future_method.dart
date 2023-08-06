Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    return "hello $name";
  });
}

void main(List<String> args) {
  sayHello('andi')
  .then((value) => print(value)); // ketika sudah didapatkan datanya maka diprint
  print('done');
}
