
int spacing = 10;
int option = 0;

void setup() {
  size(800, 600);
  smooth();
  noFill();
}

void draw() {
  background(255);
  
  if( option == 0 ){
    for (int x = 50; x <= width-50; x += spacing) {
      for (int y = 50; y <= height-50; y += spacing) {
        line(x-5, y-5, x+5, y+5);
        line(x+5, y-5, x-5, y+5);
      }
    }
  } else if ( option == 1 ) {
    for (int x = 50; x <= width-50; x += spacing) {
      for (int y = 50; y <= height-50; y += spacing) {
        ellipse( x, y, 5, 5 );
      }
    }
  } else if ( option == 2 ) {
    for (int x = 50; x <= width-50; x += spacing) {
      for (int y = 50; y <= height-50; y += spacing) {
        line( x, y, width/2, height/2 );
      }
    }
  }
    
}

void mousePressed() {
  option++;
  if ( option > 2 ) option = 0;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      spacing += 5;
      if (spacing > 50) spacing = 10;
    } else if (keyCode == DOWN) {
      spacing -= 5;
      if (spacing < 10) spacing = 50;
    }
  }
}
