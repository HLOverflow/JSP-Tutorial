package custompackage;

public class Person{

	public String name;
	public int age;

	public static void main(String [] args){
		Person test = new Person("testsubject", 1);
		System.out.println(test.introduce());
	}

	public Person(String name, int age){
		this.name = name;
		this.age = age;
	}

	public String introduce(){
		return "Hi, I am " + this.name + " and I am " + this.age + " years old.";
	}

}
