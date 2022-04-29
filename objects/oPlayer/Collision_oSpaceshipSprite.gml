/// @description Insert description here
// You can write your code in this editor
enterShip = true;

if enterShip and keyboard_check(vk_enter)  and global.key >=1
{
	enteredShip = true;
	global.key -=1;
	instance_change(oSpaceship, true);
	instance_destroy(other);
}