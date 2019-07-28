package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		
		Backpack x = new Backpack();		
		
		Pencil a = new Pencil();
		Ruler b = new Ruler();
		Textbook c = new Textbook();
		
		x.putInBackpack(a);
		x.putInBackpack(b);
		x.putInBackpack(c);
		
		x.packAndCheck();
	}
}
