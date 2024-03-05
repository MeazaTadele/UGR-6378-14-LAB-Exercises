Future<void> main() async {
  String order = await UserOrder();
  print(order);
}

Future<String> UserOrder() async {
  return 'Hello';
}

