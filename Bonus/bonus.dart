import 'dart:async';
import 'dart:math';

Future<void> simulateFileDownload(String fileName) async {
  int downloadTime = Random().nextInt(5) + 1;
  print('Downloading $fileName...');
  try {
    await Future.delayed(Duration(seconds: downloadTime));
    if (downloadTime > 3) {
      throw Exception('Failed to download $fileName');
    }
    print('$fileName downloaded successfully in $downloadTime seconds.');
  } catch (e) {
    print('Error: $e');
  }
}

Future<void> downloadFiles(List<String> fileNames) async {
  for (String fileName in fileNames) {
    await simulateFileDownload(fileName);
  }
  print('All downloads attempted.');
}

void main() {
  List<String> filesToDownload = ['file1.txt', 'file2.txt', 'file3.txt'];
  downloadFiles(filesToDownload);
}
