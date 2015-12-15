

void setupBezier(){
  // set up the curve values
  
  bezWaveColor = color(0,0,255); // blue
  bezWaveWidth = 5;
  
  // position the control circle
  center_w  = width * 0.50;
  center_h = height * 0.25;  

  
  // position of the line anchor points are set
  // outsize the bounding box of the window 
  // for smoother end point transitions (-5, +5)  
  bezX1 = 0 - 5; 
  bezY1 = height * xBezierPosition;
  bezX2 = width + 5;
  bezY2 = height * xBezierPosition;    
  
  // wave amplitude is fixed to the graphic window size.
  // bezier shows frequency over time, not amplitude
  bezControl1Radius = height * 0.3;
  bezControl2Radius = height * 0.3; 
  
  // set the starting points on the control circle
  bezControl1Angle = 90;
  bezControl2Angle = 180;
  
  
}

void showBezierCurve(){
   
  clearBezierArea();
  calcBezierValues();
  drawBezier(); 
  
  // testing 
  // shows bezier control circle and control points
  //ellipseMode(CENTER);
  //noFill();
  //ellipse( center_w, center_h, bezControl1Radius, bezControl1Radius);
  //ellipse( bezCX1, bezCY1 , 7, 7);
  //ellipse( bezCX2, bezCY2 , 7, 7);
 
}


void clearBezierArea(){
 
  int bezierCurveRectX = 0;
  float bezierCurveRectY = 0.17875;
  float bezierCurveRectH = 0.31625;
  noStroke();
  fill(xPale); 
  rect(bezierCurveRectX, height * bezierCurveRectY, width, height * bezierCurveRectH);
  
  /// actuals
  //int bezierCurveRectY = 143;
  //int bezierCurveRectH = 253;
  //rect(0,143,width, 253); 
}


void calcBezierValues(){
  
  // ##### wave motion representation
  // the bigger the number the smaller the period = faster waves 
  // duplicated in case you want to vary the speeds in a later version
  bezSpeed1 = (((1.0/period)/60.0) ) * 10.0 ;
  bezSpeed2 = (((1.0/period)/60.0) ) * 10.0 ;

  // control 1 steps around the control circle clockwise
  bezControl1Angle += bezSpeed1;  
    
  if(bezControl1Angle >= 360){  // close to being back to starting point
    bezControl1Angle = 90;      // reset angle back to starting point
  }
  
  // testing
  //println("angle1 : " + bezControl1Angle);  
    
  // control 2 steps around the control circle counter clockwise
  bezControl2Angle -= bezSpeed2;  //counter clockwise
  
  if(bezControl2Angle <= -90){  //close to being back to starting point
    bezControl2Angle = 180;     // reset angle back to starting point
  }
  
  // testing
  //println("angle2 : " + bezControl2Angle);
    
  // calculate the position of the two control points 
  // around the control circle
  bezCX1 = (bezControl1Radius * cos(bezControl1Angle))+center_w;  
  bezCY1 = (bezControl1Radius * sin(bezControl1Angle))+center_h;    
  bezCX2 = (bezControl2Radius * cos(bezControl2Angle))+center_w; 
  bezCY2 = (bezControl2Radius * sin(bezControl2Angle))+center_h;  

}

void drawBezier(){
 
   // draw the Bezier line
   stroke(bezWaveColor);
   strokeWeight(bezWaveWidth);
   bezier(bezX1, bezY1, bezCX1, bezCY1, bezCX2, bezCY2, bezX2, bezY2); 
   stroke(0);
   strokeWeight(1);  
}