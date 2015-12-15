//
//
//   The Wave Project  v 2.5
//   Nov, 2015

//   Learning Outcome: 
//   Create a program that pulls data gathered from 
//   an ocean buoy out in the Bearing Sea and display
//   that data to the user, both numerically and graphically.
//     - Numerical data is averaged.
//     - Graphical representations are approximate.
//
//   Learning Objectives:
//   1) Learn to write program in Processing 3.0
//   2) Learn to pull data for the program from the Internet
//   3) Learn to massage and display the data as information
//   4) Learn to display information both numerically and graphically
//   5) Learn to create a multi-pane data dashboard to show numeric and graphic data
//
//   Project:
//   digitalstew.blogspot.com/2015/12/the-wave-project-v25.html
//
//   All code released to the public domain, as-is, with no restrictions.


void setup(){
  
  // window setup [width, height]
  size(900, 800);
  background(255); 
  smooth();
  
  // text font used throughout program
  f = createFont("Arial",16,true);
  
  // used to notify timing routine of startup
  programInitialization = true;  
  
  // used to control the frequency of data pull
  dataPullInterval = xPullHourly;

  // initialize the curve settings
  setupBezier(); 
        
}


void draw(){
 
  dataRefresh();
  drawWindowFrame();
  showBuoy();
  showBezier();
  showSine();
  showWeather();  
                  
}