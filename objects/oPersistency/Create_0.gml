/// @description Insert description here
// You can write your code in this editor
objectID = string(global.createdObjectID) = "room" = string(room);
global.createdObjectID ++;
for(var i = 0; i <= array_length(oHud.objectsDestroyed) - 1; ++i)
{
	if(string(oHud.objectsDestroyed[i]) == string(objectID))
	{
		instance_destroy(id);
	}
}