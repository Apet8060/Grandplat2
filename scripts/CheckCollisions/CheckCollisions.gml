// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()
{
	CheckInputs();
	xDirection = right - left;
	if (xDirection !=0)
	{
		image_xscale = xDirection;
	}
	
	xVector = xSpeed * xDirection;
	if dashing
	{
		dashTimer -= 1/room_speed;
		if dashTimer <= 0
		{
			dashing = false;
			dashTimer = 0.3; 
		}
		if (!place_empty(x + xVector, y))
		{
		xVector = 0;
		}
		//otherwise move fast
		else if omniDirection = -1
		{
			x = x - 10;
		}
		else if omniDirection = 1
		{
			x = x + 10;
		}
	}


	else
	{
	if (place_meeting(x + xVector, y, oWall))
		{
			//check one pixel to left or right until we collide with oWall
			// ! means "not
			while(!place_meeting(x + xVector, y, oWall))
				{
				//only move 1 pixel at a time until you hit a Owall
				x = x + xDirection;
				}
				xVector = 0;
		}
	
		if (place_meeting(x + xVector, y, oTurret))
		{
			//check one pixel to left or right until we collide with oWall
			// ! means "not
			while(!place_meeting(x + xVector, y, oTurret))
				{
				//only move 1 pixel at a time until you hit a Owall
				x = x + xDirection;
				}
				xVector = 0;
		}
	
	//otherwise move normal
	x = x + xVector;	
	}
}
function CheckCollisionsY()
{
	CheckInputs();
	yVector = yVector + grv;

	if dashing
	{
		dashTimer -= 1/room_speed;
		if dashTimer <= 0
		{
			dashing = false;
			dashTimer = 0.3; 
		}
	
		if (!place_empty(x, y + yVector))
			{
		
				while(place_empty(x, y + sign(yVector),))
					{
					//only move 1 pixel at a time until you hit a Owall
					y = y + sign(yVector);
					}
					yVector = 0;
			}
	}


	else
	{
		if (place_meeting(x, y + yVector, oWall))
		{
		
			while(!place_meeting(x, y + sign(yVector), oWall))
				{
				//only move 1 pixel at a time until you hit a Owall
				y = y + sign(yVector);
				}
				yVector = 0;
		}
	
		if (place_meeting(x, y + yVector, oTurret))
		{
			//check one pixel to up or down until we collide with oWall
			// ! means "not
			//"sign" is going to return + or - sign for a value (-1, +1)
			//sign(yVector) if yVector is positive it will return a +1, if negative, it will return a -1
			while(!place_meeting(x, y + sign(yVector), oTurret))
				{
				//only move 1 pixel at a time until you hit a Owall
				y = y + sign(yVector);
				}
				yVector = 0;
		}

	//otherwise move normal
	y = y + yVector;
	}
}