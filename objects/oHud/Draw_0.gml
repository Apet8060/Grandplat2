//display surrent coin count and points
draw_text(32,32, "coins: " +string(global.coins));
draw_text(32,64, "points: " +string(global.points));
draw_text(32,96, "HP: " +string(oPlayer.hp));
draw_text(32,128, "Level Time remaining: " +string(floor(levelTimer)));