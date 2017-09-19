void setup()
{
	noLoop();
	size(700,700);
}
void draw()
{
	//your code here
	
	for (int x = 10; x <= 600; x= x +50)
	{
		for (int y= 10; y<= 600; y= y+50)
		{
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
		}

	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, randomRoll;//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY= y;
	}
	void roll()
	{
		//your code here
		int randomRoll = (int)((Math.random()*6) +1);
		System.out.println(randomRoll);
		if (randomRoll == 1){
			ellipse(myX + 20,myY+ 20,8,8);
		}
		if (randomRoll == 2){
			ellipse(myX +10, myY + 10, 8,8);
			ellipse(myX + 30, myY +30,8,8);
		}
		if (randomRoll == 3){
			ellipse(myX +10, myY + 10, 8,8);
			ellipse(myX + 20,myY+ 20,8,8);
			ellipse(myX + 30, myY +30,8,8);
		}
		if (randomRoll == 4){
			ellipse(myX +10, myY + 10, 8,8);
			ellipse(myX +10, myY + 30, 8,8);
			ellipse(myX +30, myY + 10, 8,8);
			ellipse(myX +30, myY + 30, 8,8);
		}
		if (randomRoll == 5){
			ellipse(myX +10, myY + 10, 8,8);
			ellipse(myX +10, myY + 30, 8,8);
			ellipse(myX +30, myY + 10, 8,8);
			ellipse(myX +30, myY + 30, 8,8);
			ellipse(myX + 20,myY+ 20,8,8);
		}
		if (randomRoll == 6){
			ellipse(myX +10, myY + 10, 8,8);
			ellipse(myX +10, myY + 30, 8,8);
			ellipse(myX +30, myY + 10, 8,8);
			ellipse(myX +30, myY + 30, 8,8);
			ellipse(myX +10, myY+20,8,8 );
			ellipse(myX + 30, myY +20,8,8);
		}
	}
	void show()
	{
		//your code here
		rect(myX,myY,40,40);
	}
}