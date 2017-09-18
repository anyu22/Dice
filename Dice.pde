void setup()
{
	noLoop();
}
void draw()
{
	//your code here
	
	for (int x = 10; x <= 60; x= x +15)
	{
		for (int y= 10; y<= 60; y= y+15)
		{
			Die bob = new Die(x,y);
			bob.show();
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
		int x =(int)Math.random();
		if(x <= 0.16) {
			randomRoll = 1;
		}
		else if(x <= 0.32 ){
			randomRoll = 2;
		}
		else if (x <= 0.48){
			randomRoll = 3;
		}
		else if (x < 0.64) {
			randomRoll= 4;
		}
		else if (x < 0.8 ) {
			randomRoll = 5;
		}
		else{
			randomRoll = 6;
		}
		System.out.println(randomRoll);
	}
	void show()
	{
		//your code here
		rect(myX,myY,10,10);
	}
}