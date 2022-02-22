/// @description Insert description here
// You can write your code in this editor

if (isInvincible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvincible = false;
	}
}

xDirection = sign(oPlayer.x - x);
xVector = xSpeed * xDirection;

if (abs(oPlayer.x - x) < 128)
{
x = x + xVector
}

if stun
{
	stunTimer -= 1/room_speed;
	if stunTimer <= 0
	{
		stunTimer = 2;
		stun = false;
		xSpeed = 2;
	}
}

yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
		//check one pixel to up or down until we collide with oWall
		// ! means "not
		//"sign" is going to return + or - sign for a value (-1, +1)
		//sign(yVector) if yVector is positive it will return a +1, if negative, it will return a -1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move 1 pixel at a time until you hit a Owall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
y = y + yVector;
