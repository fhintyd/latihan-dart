void sayHello(String name, String Function(String) filter) {
  print('Hello ${filter(name)}');
}

void main() {
  sayHello('Fahmi Natayuda', (name) {
    return name.toUpperCase();
  });

  sayHello('Fahmi Natayuda', (name) => name.toLowerCase());

  var upperFunction = (String name) {
    return name.toUpperCase();
  };

  var lowerFunction = (String name) => name.toLowerCase();

  var result1 = upperFunction('Fahmi');
  print(result1);

  var result2 = lowerFunction('Fahmi');
  print(result2);
}
