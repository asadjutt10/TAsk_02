# TAsk_02
Explanation:
main():

Initializes sample data (data) and defines file paths (inputFile and outputFile).
Calls writeToFile to write the sample data to input.txt.
Calls processFileData to read from input.txt, reverse each line, and write the reversed content to output.txt.
Finally, it reads and prints the content of output.txt.
writeToFile(String filename, List<String> data):

Writes the provided list of strings (data) to the specified file (filename).
Handles any I/O errors using a try-catch block.
readFromFile(String filename):

Reads and returns the contents of the specified file (filename) as a list of strings.
Handles any I/O errors using a try-catch block.
processFileData(String inputFilename, String outputFilename):

Reads the data from inputFilename.
Reverses each line of the data.
Writes the reversed lines to outputFilename.
Handles any errors during the process using a try-catch block.
How to Run:
Make sure to replace the file paths (input.txt, output.txt) with the appropriate paths for your environment.
Run the main() function, which will create input.txt with the sample data, reverse the lines, and save the result to output.txt.
The reversed content will be printed to the console.
