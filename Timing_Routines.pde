

boolean timeToRefreshData(){
  
  boolean timeToRefresh = false; 
  
  // check the initialization flag. if this i sthe first time
  // the program is running, always go get data, otherwise only
  // get data at certain times
  
  if (programInitialization){

    // turn off initilization flag
    programInitialization = false; 
    
    // set the time the data is pulled
    dataHour = hour();
    dataMinute = minute();    
    dataSecond = second(); 
    
    // always refresh data on startup
    timeToRefresh = true;

  }
  else{
    
   // data has been initially pulled or refreshed at least once
   // so now determine if it is time to refresh data again
    
    switch(dataPullInterval){
        
      case xPullHourly: 
         timeToRefresh = checkHour();
         break;
      case xPullEvery15Minutes:
         timeToRefresh = check15minutes();
         break;
      case xPullEvery30Seconds:
         timeToRefresh = check30Seconds();
         break;
      default: 
         timeToRefresh = false;
         println("default action");
         break;
    } 
  }
    
  return timeToRefresh;
  
}

boolean checkHour(){
  
  boolean validTime = false;  
  currentHour = hour();
  
  // (edge scenario special case) 
  // if currentHour is 0 then always return true
  // unless dataHour is also zero which means 
  // data was just pulled  
  
  if(currentHour == dataHour){
    validTime = false;
  }
  else{
    
    // case when time changed from 23 to 0
    if(currentHour == 0){
      dataHour = currentHour;
      validTime = true;
    }
    else{
      
      // typical scenario
      if(currentHour > dataHour){
        dataHour = currentHour;
        validTime = true;
      }
      else{
        validTime = false;
      }
    }
  }
  
  return validTime; 
  
}


boolean check15minutes(){ 
  boolean validTime = false;  
  /// TODO: code this in the future
  return validTime;  
}

boolean check30Seconds(){  
  boolean validTime = false;    
  /// TODO: code this in the future
  return validTime;  
}