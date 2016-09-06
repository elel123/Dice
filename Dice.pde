void setup()
{
	noLoop();
	size(400, 400);
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY; 
	int rollValue = (int)(Math.random()*7);
	int drawValue;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		roll();
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		if(rollValue == 1);
		{
			drawValue = 1;
		}

		else if(rollValue == 2);
		{
			drawValue = 2;
		}

		else if(rollValue == 3);
		{
			drawValue = 3;
		}

		else if(rollValue == 4);
		{
			drawValue = 4;
		}

		else if(rollValue == 5);
		{
			drawValue = 5;
		}

		else 
		{
			drawValue = 6;	
		}

	}
	void show()
	{
		//your code here
		strokeWeight(2);
		fill(255);
		rect(myX, myY, 40, 40, 10);
		fill(0);
		if(drawValue == 1)
		{
			ellipse(myX, myY, 10, 10);
		}
	}
}
