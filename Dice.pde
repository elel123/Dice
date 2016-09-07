void setup()
{
	noLoop();
	size(400, 400);

}
void draw()
{
	/*
	int cRed = (int)(Math.random()*255);
	int cGreen = (int)(Math.random()*255);
	int cBlue = (int)(Math.random()*255);
	*/

	background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	for(int i = 5; i < 400; i += 50)
	{
		for(int j = 5; j < 340; j += 50)
		{
			Die duck = new Die(i,j);
			duck.show();	
		}
	}
}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, rollValue, drawValue;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		rollValue = (int)(Math.random()*3) + 1;
		drawValue = 1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	
	}
	void show()
	{
		//your code here
		strokeWeight(2);
		fill(255);
		stroke(0);
		rect(myX, myY, 40, 40, 10);
		fill(0);
		noStroke();
		if(rollValue == 1)
		{
			fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX + 20, myY + 20, 10, 10);
		}

		if(rollValue == 2)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 30, myY + 30, 10, 10);
		}

		if(rollValue == 3)
		{
			fill(240, 0, 0);
			ellipse(myX + 30, myY + 10, 8, 8);
			ellipse(myX + 20, myY + 20, 8, 8);
			ellipse(myX + 10, myY + 30, 8, 8);

		}

	}
}
