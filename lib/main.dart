import 'dart:io';

void main() async {
  // Example usage
  List<String> data = ['Hello', 'World', 'Flutter', 'Dart'];
  String inputFile = 'input.txt';
  String outputFile = 'output.txt';

  // Write data to file
  await writeToFile(inputFile, data);

  // Read data from file
  List<String> fileData = await readFromFile(inputFile);
  print('File data: $fileData');

  // Process file data: reverse lines and write to a new file
  await processFileData(inputFile, outputFile);

  // Read the reversed data
  List<String> reversedData = await readFromFile(outputFile);
  print('Reversed file data: $reversedData');
}

// 1. File Handling: Write to a file
Future<void> writeToFile(String filename, List<String> data) async {
  final file = File(filename);
  try {
    // Write each line of data to the file
    final sink = file.openWrite();
    for (String line in data) {
      sink.writeln(line);
    }
    await sink.close();
    print('Data written to $filename successfully.');
  } catch (e) {
    print('Error writing to file $filename: $e');
  }
}

// 1. File Handling: Read from a file
Future<List<String>> readFromFile(String filename) async {
  final file = File(filename);
  try {
    // Read all lines from the file
    List<String> lines = await file.readAsLines();
    print('Data read from $filename successfully.');
    return lines;
  } catch (e) {
    print('Error reading from file $filename: $e');
    return [];
  }
}

// 3. Data Processing: Reverse lines in a file and write to another file
Future<void> processFileData(String inputFilename, String outputFilename) async {
  try {
    // Read lines from input file
    List<String> lines = await readFromFile(inputFilename);

    // Reverse each line
    List<String> reversedLines = lines.map((line) => line.split('').reversed.join('')).toList();

    // Write reversed lines to output file
    await writeToFile(outputFilename, reversedLines);
    print('Data processed and written to $outputFilename successfully.');
  } catch (e) {
    print('Error processing file data: $e');
  }
}
