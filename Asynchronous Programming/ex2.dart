void main() {
  UserOrder().then((order) => print('Your order: $order'));
}

Future<String> UserOrder() {
  return Future.value('Latte');
}

