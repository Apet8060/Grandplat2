// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()
{
	xDirection = right - left;
	xVector = xSpeed * xDirection;
}

function CheckCollisionsY()
{
	yVector = yVector + grv;
}