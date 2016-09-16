
Die dieOne;
int roll;
int sum = 0;
int total = 0;

void setup()
{
	size(1400,668);
	noLoop();
}

void draw()
{
	background(0);

	int xPos2, yPos2;
	for (xPos2 = 27; xPos2 <= 1300; xPos2 += 70) {
		for (yPos2 = 27; yPos2 <= 550; yPos2 += 70) {
			dieOne= new Die(xPos2, yPos2);
		 	dieOne.roll();
		 	dieOne.show();
		}
	}

	textAlign(CENTER, BOTTOM);
	fill(255);
	textSize(35);
	text("Current Roll: " + sum, 685, 615);
	text("Total: " + total, 685, 655);
}
void mousePressed()
{	
	sum = 0;
	redraw();
}
class Die
{
	int dieNum, xPos, yPos;
	Die(int x, int y)
	{
		xPos = x;
		yPos = y;
		dieNum = (int)((Math.random()*6)+1);
	}
	void roll()
	{
		total = total + dieNum;
		sum = sum + dieNum;

	}
	void show()
	{	
		noStroke();
		fill(255);
		rect(xPos,yPos,50,50,5);
		fill(0);

		if (dieNum == 1) {
			ellipse(xPos + 25, yPos + 25, 10, 10);
			}
		else if (dieNum == 2) {
			ellipse(xPos + 40, yPos + 10, 10, 10);
			ellipse(xPos + 10, yPos + 40, 10, 10);
			}
		else if (dieNum == 3) {
			ellipse(xPos + 40, yPos + 10, 10, 10);
			ellipse(xPos + 25, yPos + 25, 10, 10);
			ellipse(xPos + 10, yPos + 40, 10, 10);
				}
		else if (dieNum == 4) {
			ellipse(xPos + 10, yPos + 10, 10, 10);
			ellipse(xPos + 40, yPos + 10, 10, 10);
			ellipse(xPos + 10, yPos + 40, 10, 10);
			ellipse(xPos + 40, yPos + 40, 10, 10);
			}
		else if (dieNum == 5) {
			ellipse(xPos + 10, yPos + 10, 10, 10);
			ellipse(xPos + 40, yPos + 10, 10, 10);
			ellipse(xPos + 25, yPos + 25, 10, 10);
			ellipse(xPos + 10, yPos + 40, 10, 10);
			ellipse(xPos + 40, yPos + 40, 10, 10);
			}
		else {
			ellipse(xPos + 10, yPos + 10, 10, 10);
			ellipse(xPos + 40, yPos + 10, 10, 10);
			ellipse(xPos + 10, yPos + 25, 10, 10);
			ellipse(xPos + 40, yPos + 25, 10, 10);
			ellipse(xPos + 10, yPos + 40, 10, 10);
			ellipse(xPos + 40, yPos + 40, 10, 10);
			}
	}
}
