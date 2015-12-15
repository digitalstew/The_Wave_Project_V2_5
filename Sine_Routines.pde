

void showSineWave(){
  
  calcSineXY();
  drawSineWave();
  fadeSineWave(); 
  
}

void calcSineXY(){
  
  s_amplitude = amplitude * 10;  
  if (s_amplitude > 60){
    // restrict just for GUI purposes
    s_amplitude = 60;
  }
  
  // testing
  //println("amplitude: " + s_amplitude);
  
  s_period =  (period * TWO_PI) / width; 
  
  //println(s_amplitude);
  //println(s_period);
  
  // reset to beginning if at the end of the width
  if (x > width){
    x = 0;
  }
  else{
    x += 1;
  }
  
  // calculate the sine value
  y = ((s_amplitude * sin(s_period * x)));    
  y = y * -1; // used to reverse the y coordinates  
    
}


void drawSineWave(){
  
  //noFill();
  fill(0);
  //stroke(50,50,255);
  stroke(255,0,0);
  ellipse(x, height * xSinePosition + y, 10, 10);
   
}


void fadeSineWave(){
 
  int sineWaveRectX = 0;
  noStroke();
  //fill(255);
  fill(xPale, 5);
  float sineWaveRectY = 0.555;
  float sineWaveRectH = 0.1875;
  rect(sineWaveRectX, height * sineWaveRectY, width, height * sineWaveRectH);  
  
  // actuals
  //int sineWaveRectY = 444;
  //int sineWaveRectH = 150;
  //rect(0,444,width, 150);  
  
  
}