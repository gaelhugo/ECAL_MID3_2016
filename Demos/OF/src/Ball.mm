//
//  Ball.mm
//  ECAL_DEMO
//
//  Created by Gaël Hugo on 22.09.16.
//
//

#include "Ball.h"

Ball::Ball(){
    speedX = 2- ofRandom(4);
    speedY = 2- ofRandom(4);
}

void Ball::setup(float _x,float _y,int _radius){
    x = _x;
    y = _y;
    radius = _radius;
    color  = ofColor(255,255,255);
    cout<<"ball setup"<<endl;
}

void Ball::setAnimation(ofImage _img, vector<vector<int> > _blitting){
    img = _img;
    blitting = _blitting;
    isBlitting = true;
}

void Ball::update(){

        x += speedX;
        y += speedY;
        
    
        if(x-85>ofGetWidth()){x = -85; }
        if(x+85<0){x = ofGetWidth()+85; }
        if(y-85>ofGetHeight()){y = -85; }
        if(y+85<0){y = ofGetHeight()+85; }
   
    
}

void Ball::draw(){
    ofSetColor(color);
    ofDrawCircle(x, y, radius);
    if(isBlitting){
        vector<int> shifted = blitting[0];
        int px = shifted[0];
        int py = shifted[1];
        int w = shifted[2];
        int h = shifted[3];
        img.drawSubsection(x- w/2, y- h/2, w, h, px, py);
        blitting.erase(blitting.begin());
        blitting.push_back(shifted);
    }
}
