
void buildTextInfoLines(){

  buildBouyInfo();
  buildBezierInfoLine();
  buildSineInfoLine();
  buildWeatherInfoLine();
  buildWeatherInfo();

}

void buildBouyInfo(){

  bouyInfo = ""; 
  bouyInfo += "Real time data ";
  bouyInfo += "from ocean bouy: Station 46035 (LLNR 1198)" + xCRLF;
  bouyInfo += "Location: Central Bering Sea - 310 NM North of Adak, AK" + xCRLF;
  bouyInfo += "Coordinates: 57.026 N 177.738 W";
   
}


void buildBezierInfoLine(){

  bezierInfo = ""; 
  bezierInfo = "Average wave frequency representation over time in a 20 minute sample.";  
}


void buildSineInfoLine(){

  sineInfo = "";
  int ht = round(ConvertM2F(avgWaveHeight)); 
  float p = Float.valueOf(avgWavePeriod).floatValue();
  sineInfo += "Average wave height of " + ht;
  sineInfo += " feet with " + round(p) + " waves per second in a 20 minute sample.";  
 
}


void buildWeatherInfoLine(){

  weatherInfo = "";  
  weatherInfo += "Buoy weather conditions:  "; 
  weatherInfo += getMonthName(month) + " ";
  weatherInfo += day + ", ";
  weatherInfo += year + "   ";
  weatherInfo += "At ";
  weatherInfo += hour + ":" + minute + " local buoy time.";
  
}

void buildWeatherInfo(){
  
  String cardinal = "";
  weatherData1 = "";
  weatherData2 = "";
  
    if (isNumeric(avgWindDirection)){
       int deg = Integer.valueOf(avgWindDirection).intValue();  
       cardinal = getCardinal(deg);
    }
    else{
      cardinal = "???";
    }
    
  weatherData1 += "Air temperature: " + ConvertC2F(airTemperature) + " F" + xCRLF; 
  weatherData1 += "Water temperature : " + ConvertC2F(waterTemperature) + "F" + xCRLF;  
     
  weatherData1 += "Wind speed: " + ConvertMs2MPHF(avgWindSpeed) + " mph" + xCRLF;
  weatherData1 += "Wind direction: " + cardinal;
  weatherData1 += "  (" + avgWindDirection + " deg)" + xCRLF;
  
  weatherData2 += "Sea level pressure: " + ConverthPa2inHG(sealevelPressure) + " inHg" + xCRLF;
  weatherData2 += "Pressure tendancy: " + pressureTendancy; 
  weatherData2 += xCRLF + xCRLF + "Buoy data is pulled every hour.";
  
   
}