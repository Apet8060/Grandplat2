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

if (y >= room_height)

{
	Playerdeath();
}
	