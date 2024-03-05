void main() {
  try {
    checkAge(17);
  } catch (e) {
    print(e);
  }
}

void checkAge(int age) {
  if (age < 18) {
    throw Exception('Not eligible');
  }
  print('Eligible');
}

