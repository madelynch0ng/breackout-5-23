 void game() {
  background(0);

  // paddle======================================= 
  fill(255);
  circle(px, py, pd);
  if (rightkey) px = px +5;
  if (leftkey) px = px -5;

  //ball===========================================================
  fill(255, 0, 255);
  circle ( bx, by, bd );
  bx = bx + vx ;
  by = by + vy ;

  //bouncing 
  if (dist ( bx, by, px, py ) < bd /2 + pd /2) { // bouncing of the sides
    vx = ( bx - px ) / 10 ;
    vy = ( by - py ) / 10 ;
  }
  if ( bx < bd /2 || bx > width- bd /2) { // bouncing off the sides
    vx = vx * -1;
  }
  if ( by < bd /2 || by > height - bd /2) {// bouncing off the top
    vy = vy * -1;
  }


  //brick=============================================================================

  int i = 0;
  while (i <  n ) {
    circle(x[i], y[i], brickd);               // key: draw the brick on page i insteads of 0
    if ( dist ( bx, by, x[i], y [i]) < bd/2 + brickd/2 ) {
      vx = ( bx - x [i] ) / 10 ;
      vy = ( by - y [i] ) / 10 ;
  }
     i++;
  }
}

  void gameClicks() {
  }
