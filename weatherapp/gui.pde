color black= 0;
float titleX, titleY, titleRectWidth, titleRectHeight;
float quitx,quity,quitwidth,quitheight;
float currentapix,currentapiy,currentapiwidth,currentapiheight;
float tempx,tempy,tempwidth,tempheight;
float ex,ey, ewidth,eheight;
float cx,cy, cwidth,cheight;
float vx,vy, vwidth,vheight;


void GUI_setup(){
background(black);
titleX=titleY=width*0 ; 
titleRectWidth= width*9/10 ;
titleRectHeight= height*1/10; 
rect(titleX, titleY, titleRectWidth, titleRectHeight);

quitx=width*9/10;
quity= height*0;
quitwidth=width/10;
quitheight=height/10;
rect(quitx,quity,quitwidth,quitheight);

currentapix=width*0;
currentapiy=height*1/10;
currentapiwidth= width;
currentapiheight= height*1/30;
rect(currentapix,currentapiy,currentapiwidth,currentapiheight);

tempx=width*1/5;
tempy=height*4/30;
tempwidth=width*3/5;
tempheight= height*16/30;
rect(tempx,tempy,tempwidth,tempheight);

ex=width*0;
ey=height*2/3;
ewidth=width/3;
eheight=height*1/3;
rect(ex,ey, ewidth,eheight);
cx=width/3;
cy=height*2/3;
cwidth=width/3;
cheight=height*1/3;
rect(cx,cy, cwidth,cheight);
vx=width*2/3;
vy=height*2/3;
vwidth=width/3;
vheight=height*1/3;
rect(vx,vy, vwidth,vheight);



}
