package custompackage;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class FileIo{

	public static void main(String [] args){
		FileIo obj = new FileIo();
		obj.writeToFile("hi");
	}

	public void writeToFile(String input){

		try {
			FileWriter myWriter = new FileWriter("filename.txt");
			myWriter.write(input);
			myWriter.close();
			System.out.println("Successfully wrote to the file.");

		} catch (IOException e) {

			System.out.println("An error occurred.");
			e.printStackTrace();

		}

	}

}
