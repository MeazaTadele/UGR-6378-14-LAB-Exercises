
void main() {

  Map<String, int> exampleMap = {
    'one': 1,
    'two': 2,
    'three': 3
  };

  printMap(exampleMap);
}

void printMap(Map<dynamic, dynamic> map) {
  if (map.isEmpty) {
    print("The map is empty.");
    return;
  }

  map.forEach((key, value) {
    print("$key : $value");
  });
}
