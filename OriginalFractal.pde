public void setup()
{
	size(600,600);
	background(0);
	frac(300,300, 180);
}

public void frac(int x, int y, int len)
{
	if (len<20){
		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		noFill();
		ellipse(x,y,0,0);
	}
	else 
	{
		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		noFill();
		ellipse(x,y,len,len);
		frac(x-len, y, len/2);
		frac(x+len, y, len/2);
		frac(x+2*len, y, len/2);
		frac(x-2*len, y, len/2);
		frac(x+len, y+len, len/2);
		frac(x-len, y-len, len/2);
		frac(x-len, y+len, len/2);
		frac(x+len, y-len, len/2);
	}
}
