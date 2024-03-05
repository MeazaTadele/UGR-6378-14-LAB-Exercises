
void main() {
  List<num> numbers = [70, 20, 40, 40, 70];
  double average = Average(numbers);
  print(average);
}

double Average(List<num> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  
  double sum = 0;
  for (num number in numbers) {
    sum += number;
  }
  
  return sum / numbers.length;
}


