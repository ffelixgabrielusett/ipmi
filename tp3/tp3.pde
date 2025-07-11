/*
 Felix Gabriel Uset
 Comision 5
 TP3 recuperatorio
 */

PImage opart;
color figuraColor;
color figuraColorDos;

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
  dibTablero();
  minrect(10, 10);
}

void mouseClicked() {
  if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 400) {
    figuraColor = color(255);
    figuraColorDos = color(35);
  } else if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 400) {
    figuraColor = color(35);
    figuraColorDos = color(255);
  }
}
