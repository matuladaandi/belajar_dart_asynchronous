Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('hello word');
  });
}

void main(List<String> args) {
  hello();
  print('done');
}
