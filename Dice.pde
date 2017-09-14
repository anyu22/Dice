void setup()
{
	noLoop();
}
void draw()
{
	//your code here
	fill(0);
	for (int x = 1; x = 6; x++)
	{
		for (int y= 1; y= 6; y++)
		{
			rect(10,10,10,10);
		}

	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int x, y, randomRoll;//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		x = 5;
		y= 5;
	}
	void roll()
	{
		//your code here
		randomRoll = (int)(Math.random()*6)+ 1);

	}
	void show()
	{
		//your code here
		if (randomRoll == 1)
			ellipse(x,y,2,2);
	}
}
