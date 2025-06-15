/*
 Felix Gabriel Uset
 Comision 5
 TP3
 Video: 
 */

PImage opart;

void setup() {
  size(800, 400);
  opart = loadImage("tabaje.jpg");
  figuraColor = color(36);
  figuraColorDos = color(255);
  rectMode(CENTER);
}

void draw() {
  background(255);
  image(opart, 0, 0, 400, 400);
  func();
}
