
void main() {
  List<int> numbers = [1, 2,3,4,5,6,7];
  print(HighestNumber(numbers));
}

int HighestNumber(List<int> numbers) {

  if (numbers.isEmpty) {
    print("The list is empty.");
  }

  int highest = numbers[0];
  for (int number in numbers) {
    if (number > highest) {
      highest = number;
    }
  }

  return highest;
}

