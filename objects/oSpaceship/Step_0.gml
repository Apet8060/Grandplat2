/// @description Insert description here
// You can write your code in this editor

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)

yDirection = down - up;
yVector = 4 * yDirection;
xDirection = right - left;
xVector = xSpeed * xDirection;

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
			
x = x + xVector;
			
		if (place_meeting(x, y + yVector, oWall))
	{
		
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move 1 pixel at a time until you hit a Owall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
y = y + yVector + grv;

if isInvincible
{
	invTimer -= 1/room_speed
	if invTimer <=0
	{
		isInvincible = false;
		invTimer = 2;
	}
}