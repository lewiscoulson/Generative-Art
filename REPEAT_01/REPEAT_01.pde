
void setup(){
  size(900, 600);
  smooth();
  noFill();
  background( #ffffff );
  noLoop();
}

void draw(){
  color[] vert1 = { #000099, #009900, #990000 };
  color[] vert2 = { #820BBB, #FF7D40, #00868B };
  
  color[] horz1 = { #000099, #009900, #990000 };
  color[] horz2 = { #FFA54F, #E6E6FA, #B4CDCD };
  
  int lineWidth = 9;
  int numVert = width / lineWidth;
  int numHorz = height / lineWidth;

  for ( int i = 0; i < numVert; i += 3 ) {
    drawLineGroup( "vert", vert1, lineWidth, i, lineWidth);
  }
  
  for ( int j = 0; j < numHorz; j += 3 ) {
    drawLineGroup( "horz", horz1, lineWidth, j, lineWidth);
  }
  
  for ( int k = 0; k < numVert; k += 3 ) {
    drawLineGroup( "vert", vert2, lineWidth, k, lineWidth * 3);
  }
  
  for ( int l = 0; l < numHorz; l += 3 ) {
    drawLineGroup( "horz", horz2, lineWidth, l, lineWidth * 3);
  }
}

void drawLineGroup(  String orientation, color[] colorGroup, int thickness, int offset, int pos  ) {
  for( int i = 0; i < 3; i++ ) {
    drawLine( orientation, colorGroup[ i ], thickness, offset + i, pos);
  }
}

void drawLine ( String orientation, color lineColor, int thickness, int offset, int pos ) {
  int y = 0;
  int x = 0;
  int rectWidth = 0;
  int rectHeight = 0;
  
  if ( orientation == "vert" ) {
    y = 0;
    x = ((offset * thickness) * 4) + pos;
    rectWidth = thickness;
    rectHeight = height;     
  } else if ( orientation == "horz" ) {
    x = 0;
    y = ((offset * thickness) * 4) + pos;
    rectWidth = width;
    rectHeight = thickness; 
  }
  
  noStroke();
  fill( lineColor );
  rect( x, y, rectWidth, rectHeight );
}
