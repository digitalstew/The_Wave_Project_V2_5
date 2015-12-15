

void drawWindowFrame(){
  
 stroke(0);   
       
  float bouyHardBottomLine = 0.125; 
  //Bouy name and location hard bottom line
  strokeWeight(4);
  stroke(0);
  //line(0, 100, width, 100);
  line(0, height * bouyHardBottomLine, width, height * bouyHardBottomLine);
  
  float BezierThinBottomLine = 0.175;
  //Bezier curve info thin bottom line
  strokeWeight(1);
  stroke(200);
  //line(0, 140, width, 140);  
  line(0, height * BezierThinBottomLine, width, height * BezierThinBottomLine);
  
  float sineCurveHardTop = 0.5;
  //Sine curve hard top line
  strokeWeight(4);
  stroke(0);
  //line(0, 400, width, 400);
  line(0, height * sineCurveHardTop, width, height * sineCurveHardTop);
  
  float sineCurveThinBottom = 0.55;
  //Sine curve info thin bottom line
  strokeWeight(1);
  stroke(200);
  //line(0, 440, width, 440);  
  line(0, height * sineCurveThinBottom, width, height * sineCurveThinBottom);

  //Weather hard top line
  strokeWeight(4);
  stroke(0);
  float weatherHardTop = 0.75;
  //line(0, 600, width, 600); 
  line(0, height * weatherHardTop, width, height * weatherHardTop);
  
  float weatherThinBottom = 0.8;
  // weather info thin bottom line
  strokeWeight(1);
  stroke(200);
  //line(0, 640, width, 640);  
  line(0, height * weatherThinBottom, width, height * weatherThinBottom);

}


/// NOTE: always erase first because of Processing text issue

void showBuoy(){
  
  // clear the buoy area
  int bouyInfoRectX = 0;
  float bouyInfoRectY = 0.0;
  float bouyInfoRectH = 0.12;
  noStroke();
  fill(xLtYellow);
  rect(bouyInfoRectX, height * bouyInfoRectY, width, height * bouyInfoRectH);
  
  //int bouyInfoRectY = 0;
  //int bouyInfoRectH = 96;
  //rect(0,0,width, 96); 
  
  // display the text
  textFont(f,20);
  fill(0);
  text(bouyInfo, 5, height * bouyInfoRectY + 25);  
  
}


void showBezier(){ 
  // bezier info line and bezier curve
  
  // clear the bezier info area
  int bezierInfoRectX = 0;
  float bezierInfoRectY = 0.13125;
  float bezierInfoRectH = 0.04125; 
  noStroke();
  fill(xLtBlue); 
  rect(bezierInfoRectX, height * bezierInfoRectY, width, height * bezierInfoRectH); 
  
  //int bezierInfoRectY = 105;
  //int bezierInfoRectH = 33;
  //rect(0,105,width, 33);   
  
  // display the text info line
  textFont(f,18);
  fill(0);
  text(bezierInfo, 5, height * bezierInfoRectY + 25);
  
  // display the curve
  showBezierCurve(); 
  
}

void showSine(){
  // sine info line and sine wave
  
  // clear the sine info area  
  int sineWaveInfoRectX = 0;
  float sineWaveInfoRectY = 0.50625;
  float sineWaveInfoRectH =0.04125;
  noStroke();
  fill(xLtBlue); 
  rect(sineWaveInfoRectX, height * sineWaveInfoRectY, width, height * sineWaveInfoRectH); 
  
  //int sineWaveInfoRectY = 405;
  //int sineWaveInfoRectH = 33;
  //rect(0,405,width, 33);  
  
  // display the text info line
  textFont(f,18);
  fill(0);
  text(sineInfo, 5, height * sineWaveInfoRectY + 25);  
  
  // display the wave
  showSineWave();
  
}

void showWeather(){  
  // weather info line and weather details
 
 showWeatherInfoLine();
 showWeatherData();
  
}

void showWeatherInfoLine(){

    // clear the weather info area
  int weatherInfoRectX = 0;
  float weatherInfoRectY = 0.75625;  
  float weatherInfoRectH = 0.04125;  
  noStroke();
  fill(xLtBlue);  
  rect(weatherInfoRectX, height * weatherInfoRectY, width, height * weatherInfoRectH);   
  
  //int weatherRectY = 605;
  //int weatherRectH = 33;
  //rect(0,605,width, 33); 

  // display the text info line
  textFont(f,18);
  fill(0);
  text(weatherInfo, 5, height * weatherInfoRectY + 25);  
  
}

void showWeatherData(){
  

  // clear the weather data area  
  int weatherDataRectX = 0;
  float weatherDataRectY = 0.805;  
  float weatherDataRectH = 0.19125;  
  noStroke();
  fill(xLtYellow);  
  rect(weatherDataRectX, height * weatherDataRectY, width, height * weatherDataRectH);   
  
  //int weatherRectY = 644;
  //int weatherRectH = 153;
  //rect(0,644,width, 153);   
  
  // display the text info line
  textFont(f,20);
  fill(0);
  text(weatherData1, 5, height * weatherDataRectY + 25);  
 
  // display the text info line
  textFont(f,20);
  fill(0);
  text(weatherData2, 350, height * weatherDataRectY + 25);    
  
}