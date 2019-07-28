package _01_intro_to_static;

public class Athlete {

    static int nextBibNumber = 0;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

    Athlete (String name, int speed){
    	this.name = name;
    	this.speed = speed;
    	
    	nextBibNumber++;
    	
    	bibNumber = nextBibNumber;
    }


	public static void main(String[] args) {
		//create two athletes      //print their names, bibNumbers, and the location of their race. }
	
		Athlete a = new Athlete("John", 6);
		
		Athlete b = new Athlete("Hank", 7);
		
		System.out.println(a.bibNumber);
		System.out.println(a.raceLocation);
		System.out.println(a.raceStartTime);
		System.out.println(b.bibNumber);
		System.out.println(b.raceLocation);
		System.out.println(b.raceStartTime);
	}
}