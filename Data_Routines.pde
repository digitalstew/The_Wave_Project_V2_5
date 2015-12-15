
void dataRefresh(){
   
  if (getBouyData()){
    buildTextInfoLines();
    println("data refreshed at " + hour() + ":" + minute() + " local time.");
  }
  else{
    //println("using static data");
  }

}


boolean getBouyData(){
    
  // web address for bouy data
  String bouyDataLocation = xDataURL;
  String dataLines[];    // array of the weather data pulled from the web  
  Boolean dataFound = false;
  
  if(timeToRefreshData()){
     
    //loading the data from the web
    dataLines = loadStrings(bouyDataLocation);

    // check for data loading error
    if(dataLines == null){
      dataFound = false;
    }
    else{ 
      
      if(GetDataItems(dataLines)){
        dataFound = true;
      }
      else{
        dataFound = false;
      }
    }
  }
    
  return dataFound;
  
}


boolean GetDataItems(String lines[]){
  
  boolean dataItemsFound = false;
  
   // splitTokens must be used because there are are delimerters
   // that are made up of multiple spaces.
   String[] itemList = splitTokens(lines[xDATA_ROW], "   ");
   
   if(itemList == null){
     dataItemsFound = false;
   }
   else{
     // printing for testing
     //println("There are" + itemList.length + " data items");  
     //for (int i = 0 ; i < itemList.length; i++) {
     //  println(itemList[i]);
     //} 
        
     month = itemList[xMONTH];    
     day = itemList[xDAY];
     year = itemList[xYEAR];

     hour = itemList[xHOUR];  
     minute = itemList[xMINUTE];

     avgWindDirection = itemList[xWDIR];
     avgWindSpeed = itemList[xWSPD];

     avgWaveHeight = itemList[xWVHT];
     avgWavePeriod = itemList[xAPD];

     sealevelPressure = itemList[xPRES];
     pressureTendancy = itemList[xPTDY];

     airTemperature = itemList[xATMP];
     waterTemperature = itemList[xWTMP];
     dewPoint = itemList[xDEWP]; 
     
     // validate numerical data before using ! 
     // if data is not numeric, then assign "0.0";
     if (isNumeric(avgWaveHeight)){
       amplitude = Float.valueOf(avgWaveHeight).floatValue();         
     }
     else{
      avgWaveHeight = "0.0";
      amplitude = 0.0;
     }

     // validate numerical data before using ! 
     // if data is not numeric, then assign "0.0";
     if (isNumeric(avgWavePeriod)){
       period = Float.valueOf(avgWavePeriod).floatValue(); 
     } 
     else
     {
       avgWavePeriod = "0.0"; 
       period = 0.0;
     }
     
     // use this for testing
     //amplitude = 3 ; 
     //period = 1.5;
     
     
     dataItemsFound = true;
   }
      
  return dataItemsFound;  

}


boolean isNumeric(String s){
  
  float f;
  boolean result = false;
  
  try {
    f = Float.valueOf(s).floatValue();
    result = true;
  } 
  catch (Exception e) {
    result = false;
  }   
  return result;

}