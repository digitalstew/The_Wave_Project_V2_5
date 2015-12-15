

float ConvertM2F(String m1){
  // convert meters to feet
  
  float m2 = Float.valueOf(m1).floatValue();
  //ft = m * 3.2808
  float feet;
  feet = m2 * 3.2808;
  return round(feet);

}


float ConvertC2F(String c1){ 
  // convert temp C to temp F
  
  float c2 = Float.valueOf(c1).floatValue();
  //Celsius (°C) times 9/5 plus 32:
  float fahrenheit;
  fahrenheit = ((c2 *9)/5) + 32;
  return round(fahrenheit);  
}

float ConverthPa2inHG(String h1){
  // convert pascal pressure to inches of mercury
  
  float h2 = Float.valueOf(h1).floatValue();
  //inHg = × hPa * 0.02952998751 
  float inHg;
  inHg = h2 * 0.02952998751;
  return round(inHg);
}


float ConvertMs2MPHF(String s1){
  // convert M/s to MPH
  
  float s2 = Float.valueOf(s1).floatValue();
  //1 m/s = 2.2369 mph
  float mph;
  mph = s2 * 2.2369;
  return round(mph);

}






String getMonthName(String m){
  
  int mon = Integer.valueOf(m).intValue();
  
  String result;
  switch(mon) {
   case 1: 
     result = "Jan";
     break;
   case 2: 
     result = "Feb";
     break;
   case 3: 
     result = "Mar";
     break;
   case 4: 
     result = "Apr";
     break;    
   case 5: 
     result = "May";
     break;
   case 6: 
     result = "Jun";
     break;
   case 7: 
     result = "Jul";
     break;
   case 8: 
     result = "Aug";
     break;
   case 9: 
     result = "Sep";
     break;
   case 10: 
     result = "Oct";
     break;
   case 11: 
     result = "Nov";
     break;
   case 12: 
     result = "Dec";
     break;    
   default:             
     result = "???";   
     break;   
} 
  
  return result;
  
}


String getCardinal(int deg){
  // kind of a bulky array but it provides good reolution when
  // converting from degress to the cardinal compass points.
  // Note: "N" covers both sides of 360 deg.
     
 String[] cardinal = {"N","N", 
                      "NNE","NNE", "NNE", "NNE", 
                      "NE", "NE", "NE", "NE",
                      "ENE", "ENE", "ENE", "ENE",
                      "E", "E", "E", "E",
                      "ESE", "ESE", "ESE", "ESE",
                      "SE", "SE", "SE", "SE",
                      "SSE", "SSE", "SSE", "SSE",
                      "S", "S", "S", "S",
                      "SSW", "SSW", "SSW", "SSW",
                      "SW", "SW", "SW", "SW",
                      "WSW", "WSW", "WSW", "WSW",
                      "W", "W", "W", "W",
                      "WNW", "WNW", "WNW", "WNW",
                      "NW", "NW", "NW", "NW",
                      "NNW", "NNW", "NNW", "NNW", 
                      "N", "N"};
                    
 //print("deg: " + deg + " = "); 
 //println(cardinal[(int)Math.floor((deg % 360) / 5.625)]);  
 
 return cardinal[(int)Math.floor((deg % 360) / 5.625)];
   
}