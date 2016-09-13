void setup()
{
	noLoop();
	size(400, 400);

}
void draw()
{

	

	background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	int rollSum = 0;
	int numSix=0;
	for(int i = 5; i < 400; i += 50)
	{
		for(int j = 5; j < 340; j += 50)
		{
			Die duck = new Die(i,j);
			duck.show();	
			rollSum += duck.rollValue;
			
			if(duck.rollValue==6) {
				numSix++;

			}
		}
	}
	fill(43, 149, 255);
	rect(2, 358, 180, 30);
	rect(217, 348, 175, 52);
	textSize(16);
	fill(0);
	textAlign(CENTER);
	text("The Sum of Rolls: " + rollSum, 90, 380);
	textSize(10);
	text("Above Average", 255, 398);
	text("Below Average", 355, 398);
	fill(0);
	stroke(0);
	ellipse(260, 370, 40, 40);
	ellipse(350, 370, 40, 40);
	if(rollSum > 196 && rollSum <= 252)
	{
		fill(0, 255, 0);
		stroke(0);
		ellipse(260, 370, 40, 40);
	}

	else if(rollSum < 196 && rollSum >= 84)
	{
		fill(0, 255, 0);
		stroke(0);
		ellipse(350, 370, 40, 40);		
	}

	else if(rollSum < 84)
	{
		fill(255, 0, 0);
		stroke(0);
		ellipse(350, 370, 40, 40);		
	}

	else if(rollSum > 252)
	{
		fill(255, 0, 0);
		stroke(0);
		ellipse(260, 370, 40, 40);		
	}

	else 
	{
		fill(0, 255, 0);
		stroke(0);
		ellipse(350, 370, 40, 40);	
		ellipse(260, 370, 40, 40);
	}
	//System.out.println(numSix);


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
			//text(rollValue, myX + 17, myY + 25);
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
