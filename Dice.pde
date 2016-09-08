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
	int rollSum = 0;

	background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	for(int i = 5; i < 400; i += 50)
	{
		for(int j = 5; j < 340; j += 50)
		{
			Die duck = new Die(i,j);
			duck.show();	
			rollSum = rollSum + duck.rollValue;
		}
	}
	textSize(16);
	fill(0);
	text("The Sum of Rolls: " + rollSum, 10, 380);
	textSize(25);
	text("My Dice", 300, 380);
}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, rollValue;

	Die(int x, int y) //constructor
	{
		//variable initializations here

		rollValue = (int)(Math.random()*6) + 1;
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

		else if(rollValue == 2)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 30, myY + 30, 10, 10);
		}

		else if(rollValue == 3)
		{
			fill(240, 0, 0);
			ellipse(myX + 30, myY + 10, 8, 8);
			fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX + 20, myY + 20, 8, 8);
			fill(240, 0, 0);
			ellipse(myX + 10, myY + 30, 8, 8);
		}

		else if(rollValue == 4)
		{
			fill(0);
			textSize(10);
			text(rollValue, myX + 17, myY + 25);
			ellipse(myX + 10, myY + 10, 8, 8);
			ellipse(myX + 30, myY + 30, 8, 8);
			fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX + 30, myY + 10, 8, 8);
			ellipse(myX + 10, myY + 30, 8, 8);
		}

		else if(rollValue == 5)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 7, 7);
			ellipse(myX + 30, myY + 30, 7, 7);
			ellipse(myX + 30, myY + 10, 7, 7);
			ellipse(myX + 10, myY + 30, 7, 7);
			fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX + 20, myY + 20, 7, 7);
		}

		else 
		{
			fill(0, 10, 255);
			ellipse(myX + 12, myY + 10, 7, 7);
			ellipse(myX + 28, myY + 10, 7, 7);
			ellipse(myX + 12, myY + 20, 7, 7);
			ellipse(myX + 28, myY + 20, 7, 7);
			ellipse(myX + 12, myY + 30, 7, 7);
			ellipse(myX + 28, myY + 30, 7, 7);

		}

	}
}
