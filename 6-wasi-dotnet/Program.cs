string fileName = "/tmp/hello.txt";
Console.WriteLine("Writing to file {0}", fileName);

string text = "Hello world!";
try
{
    File.WriteAllText(fileName, text);
    Console.WriteLine("File written!");
}
catch (Exception ex)
{
    Console.WriteLine("Error writing to file: {0}", ex.Message);
}