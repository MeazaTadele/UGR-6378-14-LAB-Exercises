void main() {
  try {
    checkAge(16);
  } on ArgumentError catch (e) {
    print('ArgumentError: $e');
  }
}

void checkAge(int age) {
  if (age < 18) {
    throw ArgumentError('Age must be 18 or above');
  }
  print('Eligible');
}

