void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5, 5, 5,7];
  List<int> numbersWithoutDuplicates = removeDuplicates(numbers);
  
  print(numbersWithoutDuplicates);

}

removeDuplicates(List list) {
  return list.toSet().toList();
}

