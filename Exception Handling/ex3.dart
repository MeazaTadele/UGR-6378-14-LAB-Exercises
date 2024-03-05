void main() {
  try {
    processOrder('');
  } catch (e) {
    print('error occurred: $e');
  } finally {
    print('End of order processing');
  }
}

void processOrder(String order) {
  if (order.isEmpty) {
    throw Exception('Order empty');
  }
  print('Processing for $order');
}

