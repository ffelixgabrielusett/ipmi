void func() {
  dibtablero();
  minrect(10, 10);
}


void dibtablero() {
  for (int t = 0; t<9; t++) {
    for (int i = 0; i<9; i++) {

      float x = i * 45 + 22.5 + 400;
      float y = t * 45 + 22.5;

      float d = dist(mouseX, mouseY, x, y);
      float tam = map(d, 0, 200, 25, 45);
      tam = constrain(tam, 25, 45);

      if ((i+t)%2 == 0) {
        fill(figuraColor);
      } else {
        fill(figuraColorDos);
      }
      pushMatrix();
      translate(x, y);
      stroke(100);
      rect(0, 0, tam, tam);
      popMatrix();
    }
  }
}


void mouseClicked() {
  if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 200) {
    figuraColor = color(255);
    figuraColorDos = color(35);
  } else if (mouseX > 400 && mouseX < 800 && mouseY > 200 && mouseY < 400) {
    figuraColor = color(35);
    figuraColorDos = color(255);
  }
}
