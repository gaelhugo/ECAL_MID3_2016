#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofBackground(255);
    img.load("texture/_medusa.png");
    
    if(xml.loadFile("json/medusa.xml")){
        xml.pushTag("TextureAtlas");
        int spriteNbr = xml.getNumTags("sprite");
        for(int i=0;i<spriteNbr;i++){
            xml.pushTag("sprite",i);
            vector<int> coord = {ofToInt(xml.getAttribute(":","x","")),ofToInt(xml.getAttribute(":","y","")),ofToInt(xml.getAttribute(":","w","")),ofToInt(xml.getAttribute(":","h",""))};
            blitting.push_back(coord);
            xml.popTag();
        }
        xml.popTag();
    }
   	
    
    nbrBall = 25;
    for(int i = 0;i<nbrBall;i++){
        Ball b;
        b.setup(ofRandom(ofGetWidth()),ofRandom(ofGetHeight()),50);
        b.setAnimation(img,blitting);
       	allBalls.push_back(b);
    }
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    for(int i = 0;i<allBalls.size();i++){
        allBalls[i].update();
        allBalls[i].draw();
        
    }
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
  
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
   
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
   
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
