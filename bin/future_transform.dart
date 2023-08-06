Future<String> name() {
  return Future.value("muh andi matulada");
}

void main(List<String> args) {
  name()
      .then((value) => value.split(" "))  // menjadi Future<List<String>>
      .then((value) => value.reversed) // menjadi Future<Iterable<String>>
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value));
  print('done');
}
