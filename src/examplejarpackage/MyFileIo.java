package examplejarpackage;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class MyFileIo{

	public static void main(String [] args){
		MyFileIo obj = new MyFileIo();
		obj.writeToFile("hi");
	}

	public void writeToFile(String input){

		try {
			FileWriter myWriter = new FileWriter("webapps/ROOT/filename.txt");
			myWriter.write(input);
			myWriter.close();
			System.out.println("Successfully wrote to the file.");

		} catch (IOException e) {

			System.out.println("An error occurred.");
			e.printStackTrace();

		}

	}

}
