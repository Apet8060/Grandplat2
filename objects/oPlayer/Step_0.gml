  /// @description movement
//code that runs every frame

script_execute(state_array[state]);
sprite_index = (sprite_array[state]);


if isInvincible
{
	invTimer -= 1/room_speed
	if invTimer <=0
	{
		isInvincible = false;
		invTimer = 2;
	}
}



//keyboard check and inputs



//Horitontal movement



/*
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
	if omniDirection = -1
	{
		x = x - 10;
	}
	if omniDirection = 1
	{
		x = x + 10;
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
	
}



	//Vertical movement
	yVector = yVector + grv;


}

//if we are touching oWall and we press jump, jump
if (place_meeting(x, y + 1, oWall) and (jump))
{
		yVector = jumpForce;
}

if (place_meeting(x, y + 1, oTurret)and (jump))
{
		yVector = jumpForce;
}
*/
//die in a pit and restart level
if (y >= room_height)

	{
		Playerdeath();
	}
	