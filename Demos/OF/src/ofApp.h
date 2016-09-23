#pragma once

#include "ofxiOS.h"
#include "Ball.h"
#include "ofxXmlSettings.h"

class ofApp : public ofxiOSApp {
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);
    
    int nbrBall;
    vector<Ball> allBalls;
   	ofImage img;
    ofxXmlSettings xml;
    ofXml _xml;
    vector<vector<int> > blitting;
    
};


