package _05_netflix;

public class NetflixRunner {
	public static void main(String[] args) {
		
		Movie a = new Movie("Twilight", 1);
		Movie b = new Movie("Star Wars", 3);
		Movie c = new Movie("Twilight", 4);
		Movie d = new Movie("Harry Potter", 17);
		Movie e = new Movie("Space Balls", 6);
		Movie f = new Movie("Shrek", 420);
		
		NetflixQueue x = new NetflixQueue();
		
		System.out.println(a.getTicketPrice());
		
		x.addMovie(a);
		x.addMovie(b);
		x.addMovie(c);
		x.addMovie(d);
		x.addMovie(e);
		x.addMovie(f);
		
		x.printMovies();
		
		System.out.println("the best movie is "+x.getBestMovie());
		
		System.out.println("the second best movie is "+x.getSecondBestMovie());
		
		
		
		
	}
}
