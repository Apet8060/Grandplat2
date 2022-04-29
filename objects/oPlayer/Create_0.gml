/// @description creating variables

//code that runs when oplayer is created
canJump = true;

//how many players we want the player to move
xSpeed = 4;

//what direction the player is facing (where 1 + right, -1= left, 0 =front
xDirection = 0;

//how fast and waht direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.4;

jumpForce = -13;

//coins and points

global.key = 0;

//invincibility
isInvincible = false;

//health points
hp = 6;

//level timer
levelTimer = 100;

//invincibility timer
invTimer = 2;

omniDirection = 0;
dashing = false;
dashTimer = 0.3;

enterShip = false;
eneteredShip = false;


enum states
{
	walking,
	jumping,
	idle
}

state = states.idle;

state_array[states.walking] = StatePlayerWalking;
state_array[states.jumping] = StatePlayerJumping;
state_array[states.idle] = StatePlayerIdle;

sprite_array[states.walking] = sPlayerWalking
sprite_array[states.jumping] = sPlayerJumping
sprite_array[states.idle] = sPlayerIdle