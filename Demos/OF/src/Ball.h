//
//  Ball.h
//  ECAL_DEMO
//
//  Created by Gaël Hugo on 22.09.16.
//
//

#pragma once

#include "ofxiOS.h"

class Ball{
	public:
    	Ball();
    void setup(float x, float y, int radius);
    void setAnimation(ofImage img, vector<vector<int> > blitting);
    void update();
    void draw();
  
    
    float x,y;
    int radius;
    float speedX,speedY;
    ofColor color;
    ofImage img;
    vector<vector<int> > blitting;
    bool isBlitting;
    
};