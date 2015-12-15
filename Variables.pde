// used by the timing routine
boolean programInitialization;

int dataPullInterval;  // will be set to one of the data pull timing constants

int dataHour;      // hour the data was pulled
int dataMinute;    // minute the data was pulled
int dataSecond;    // second the data was pulled

int currentHour;   // current hour
int currentMinute; // current minute
int currentSecond; // current second

// data items from the bouy
String minute, hour, day, month, year;
String avgWindDirection;
String avgWindSpeed;
String avgWaveHeight;
String avgWavePeriod;
String sealevelPressure;
String pressureTendancy;
String airTemperature;
String waterTemperature;
String dewPoint;

String bouyInfo;
String bezierInfo;
String sineInfo;
String weatherInfo;
String weatherData1;
String weatherData2;

// variables to drive the curves
float amplitude = 0;  // for sine wave
float period = 0;     // for sine and bezier

// sine wave variables
float x = 0;
float y = 0;
float s_amplitude;
float s_period;

// bezier curve variables
// end points of the bezier line
float bezX1,bezY1,bezX2,bezY2;

// position of the bezier control points
float bezCX1, bezCY1, bezCX2, bezCY2;

// bezier line drawing characteristics
color bezWaveColor; 
int bezWaveWidth;

// position on the control circle the control points will start
float bezControl1Angle;
float bezControl2Angle;

// bezier amplitude representation
float bezControl1Radius;
float bezControl2Radius;

// bezier period representation
// the bigger the number the smaller the period (faster waves)
float bezSpeed1;
float bezSpeed2;

// bezier control circle position
float center_w, center_h;

//text display
PFont f;   // font