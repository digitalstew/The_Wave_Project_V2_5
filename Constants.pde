// Constants used in the program
// all constant names start with "x"

// data index constants
final int xDATA_ROW = 2;  // first row of data in the 5 day array

final int xYEAR = 0;      // year the data was gathered 
final int xMONTH = 1;     // month the data was gathered
final int xDAY = 2;       // day the data was gathered
final int xHOUR = 3;      // hour the data was gathered
final int xMINUTE = 4;    // minute the data was gathered
final int xWDIR = 5;      // average wind direction
final int xWSPD = 6;      // average wind speed
final int xWVHT = 8;      // average wave height
final int xAPD = 10;        // average wave period
final int xPRES = 12;       // sea level air pressure
final int xATMP = 13;       // air temperature
final int xWTMP = 14;       // surface water temperature
final int xDEWP = 15;       // dew point temperature
final int xPTDY = 17;       // air pressure tendancy

// used in the data pull timing
final int xPullHourly = 0;
final int xPullEvery15Minutes = 1;  // todo
final int xPullEvery30Seconds = 2;  // todo

// Data constants
final String xDataURL = "http://www.ndbc.noaa.gov/data/5day2/46035_5day.txt";

final String xCRLF = "\r\n";

//final float xBezierPosition = 260;
final float xBezierPosition = 0.325;
//final float xSinePosition = 520;
final float xSinePosition = 0.65;

// background colors
final color xLtYellow = #FFFFCC;
final color xLtBlue = #CCE5FF;
final color xPale = #FFFAFA;