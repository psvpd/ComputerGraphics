PShape hair;

PShape face;

PShape nose;

PShape mouth;

PShape chest;

PShape rarm;

PShape larm;

PShape rh;

PShape lh;

PShape legs;

PShape rb;

PShape lb;

PShape belt;

float angle = 0.0; float offset = 486; float scalar = 10; float speed = 0.05;

float a =0.1;

void setup()

{

  size(800,1000);

  hair = createShape();

  hair.beginShape();

  hair.fill(0);

  hair.strokeWeight(2);

  hair.vertex(595,227);

  hair.vertex(649,158);

  hair.vertex(582,186);

  hair.vertex(611,112);

  hair.vertex(488,173);

  hair.vertex(348,101);

  hair.vertex(427,182);

  hair.vertex(397,206);

  hair.vertex(419,225);

  hair.endShape();

  face =createShape();

  face.beginShape();

  face.fill(255,192,167);

  face.vertex(421,226);

  face.vertex(424,226);

  face.vertex(435,279);

  face.vertex(474,317);

  face.vertex(515,322);

  

   face.vertex(555,284);

  face.vertex(589,226);

  face.endShape();

  nose= createShape();

  nose.beginShape();

  nose.fill(255,192,167);

  nose.vertex(501,258);

  nose.vertex(496,283);

  nose.vertex(515,283);

  nose.endShape();

  mouth =createShape();

  mouth.beginShape();

  mouth.fill(255,192,167);

  mouth.vertex(476,300);

  mouth.vertex(500,302);

  mouth.vertex(521,300);

  mouth.endShape();

  chest= createShape();

  chest.beginShape();

  chest.fill(237,142,20);

  chest.vertex(473,315);

  chest.vertex(468,340);

  chest.vertex(377,383);

  chest.vertex(367,643);

  chest.vertex(598,637);

  chest.vertex(582,380);

  chest.vertex(517,347);

  chest.vertex(514,319);

  chest.endShape();

  rarm =createShape();

  rarm.beginShape();

  rarm.fill(17,51,237);

  rarm.vertex(378,389);

  rarm.vertex(305,432);

  rarm.vertex(323,485);

  rarm.vertex(372,467);

  rarm.endShape();

  larm =createShape();

  larm.beginShape();

  larm.fill(17,51,237);

  larm.vertex(585,389);

  larm.vertex(671,434);

  larm.vertex(633,481);

  larm.vertex(586,461);

  larm.endShape();

  rh =createShape();

  rh.beginShape();

  rh.fill(255,192,167);

  rh.vertex(301,434);

  rh.vertex(254,491);

  rh.vertex(365,613);

  rh.vertex(367,562);

  rh.vertex(355,560);

  rh.vertex(321,482);

  rh.endShape();

  lh =createShape();

  lh.beginShape();lh.fill(255,192,167);

  lh.vertex(670,433);

  lh.vertex(708,491);

  lh.vertex(595,602);

  lh.vertex(593,564);

  lh.vertex(601,560);

  lh.vertex(640,478);lh.endShape();

  legs =createShape();

  legs.beginShape();

  legs.fill(237,142,20);

  legs.vertex(370,642);

  legs.vertex(291,925);

  legs.vertex(378,963);

  legs.vertex(490,734);

  legs.vertex(579,955);

  legs.vertex(679,930);

  legs.vertex(586,638);

  legs.endShape();

  rb =createShape();

  rb.beginShape();rb.fill(8,21,155);

  rb.vertex(301,876);

  rb.vertex(277,939);

  rb.vertex(197,961);

  rb.vertex(217,983);

  rb.vertex(394,978);

  rb.vertex(408,905);

  rb.endShape();

  lb =createShape();

  lb.beginShape();lb.fill(8,21,155);

  lb.vertex(667,880);

  lb.vertex(689,933);

  lb.vertex(744,955);

  lb.vertex(734,975);

  lb.vertex(559,971);

  lb.vertex(551,912);

  lb.endShape();

  belt =createShape();

  belt.beginShape();belt.fill(17,51,237);

  belt.vertex(369,619);

  belt.vertex(595,608);

  belt.vertex(600,634);

  belt.vertex(370,635);

  belt.endShape();

}

void draw()

{

   float x = offset + sin(angle) * scalar;  

   float y = offset + cos(angle) * scalar;

   fill(random(0,255),random(0,255),random(0,255));

   ellipse( x, y, 20, 20); ellipse(y,x,20,20);

   angle += speed;

   scalar +=0.2;

   shape(face,0,0);

   shape(chest,0,0);

   shape(belt,0,0);

   shape(legs,0,0);

   shape(rb,0,0);

   shape(lb,0,0);

   shape(rh,0,0);

   shape(lh,0,0);

   shape(rarm,0,0);

   shape(larm,0,0);

  shape(hair,0,0);

  fill(255);

  ellipse(473,254,20,10);

  ellipse(529,262,20,10);

  fill(0);

  point(473,254);

  point(529,262);

  shape(nose,0,0);

  shape(mouth,0,0);

  fill(17,51,237);

  triangle(466,339,515,344,507,420);

  fill(255);

  ellipse(548,451,50,50);

  fill(0);

  textSize(25);

  text("cg",538,458);

  println(mouseX,mouseY);

  line(pmouseX,pmouseY,mouseX,mouseY);

  frameRate(5000);

 a-=1;

}
