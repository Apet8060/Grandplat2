/// @description enemy patrol collision
// You can write your code in this editor

//check to see if there is a collision between player and the top of Oenemy
if (y <= other.y - other.sprite_height*0.9)
//bounce in the air a bit
	{
		EnemyHurt();
		yVector = jumpForce
	}
//collide with enemy and take damage
else
	{
		x = x - xVector*10;
		PlayerHurt();
	}