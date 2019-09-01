package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	
	public static void main(String[] args) {
		
		World x = new World();
		x.show();
		
		Bug bug0 = new Bug();
		Location location0 = new Location(1, 1);
		x.add(location0, bug0);
		
		Random y = new Random();
		int random0 = y.nextInt(9);
		int random1 = y.nextInt(9);
		
		Bug bug1 = new Bug();
		Location location1 = new Location(random0, random1);
		x.add(location1, bug1);
		
		bug1.setColor(Color.BLUE);
		
		for(int i = 0; i<2; i++){
		bug1.turn();
		}
		
		Location location2 = new Location(random0, random1-1);
		Location location3 = new Location(random0, random1+1);
		
		Flower flower0 = new Flower();
		Flower flower1 = new Flower();
		
		x.add(location2, flower0);
		x.add(location3, flower1);
		
		int flowerAdd =2;
		
		for(int i1=0; i1<=97; i1++){
			
			x.add(x.getRandomEmptyLocation(), new Flower());
				
			
		}
	}
}

