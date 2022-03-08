// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//trigger temp invincibility and take damage
function PlayerHurt()
{
	if(!oPlayer.isInvincible)
	{
		oPlayer.isInvincible =  true;
		oPlayer.hp --;
		if (oPlayer.hp < 1)
		{
			Playerdeath();
		}
	}

}

//restart level for player death
function Playerdeath()
{
	room_restart();
	oHud.levelTimer = 100;
	
}