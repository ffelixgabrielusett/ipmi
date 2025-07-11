float distnciaMouseXY(float x, float y) {
  return dist(mouseX, mouseY, x, y);
}

boolean siEsPar(int i, int t) {
  return (i+t)%2 == 0;
}

void dibTablero() {
  for (int t = 0; t<9; t++) {
    for (int i = 0; i<9; i++) {

      float x = i * 45 + 22.5 + 400;
      float y = t * 45 + 22.5;

      float d = distnciaMouseXY(x, y);
      float tam = map(d, 0, 200, 10, 45);
      tam = constrain(tam, 10, 45);

      if (siEsPar(i, t)) {
        fill(figuraColor);
      } else {
        fill(figuraColorDos);
      }

      pushMatrix();
      translate(x, y);
      noStroke();
      rect(0, 0, tam, tam);
      popMatrix();
    }
  }
}
