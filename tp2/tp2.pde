/*
 - Felix Gabriel Uset
 - Comision 5
 - TP2
 */

PImage portada, hermanastras, tumba, vestido, huyendo, zapato, caballo, ojos, fin;
PFont titlo, des;
int posX, posY, lugX, lugY, X, Y, PosX, PosY, letX, letY, tam, movX, movY, movimX;
int tiempomov;

void setup() {
  size(640, 480);

  //imagenes
  portada = loadImage ("portada.png");
  hermanastras = loadImage ("hermanastras.jpg");
  tumba = loadImage ("cenitumba.jpg");
  vestido = loadImage ("vestido.jpg");
  huyendo = loadImage ("huyendo.jpg");
  zapato = loadImage ("zapato.jpg");
  caballo = loadImage ("cab.jpg");
  ojos = loadImage ("ojos.jpg");
  fin = loadImage("final.png");

  //fuentes
  titlo = loadFont("Augusta-Regular-48.vlw");
  des = loadFont("Amiri.vlw");

  //valores
  posX = -350;
  posY = 70;
  lugX = -400;
  lugY = 100;
  X = 380;
  Y = 520;
  PosX = 1;
  PosY = 1;
  letX = 680;
  letY = 200;
  tam = 1;
  movX = 320;
  movY = -300;
  movimX = -200;
  tiempomov = 6000;
}

void draw() {
  background (0, 60, 70);

  if (tiempomov > (6000-120)) {
    tiempomov--;
    image (portada, 0, 0, 640, 480);
    textFont(titlo);
    fill(10, 90, 100);
    textSize(70);
    text("La Cenicienta", posX, posY);

    textFont(des);
    textSize(33);
    text("Los Hermanos Grimm", lugX, lugY);

    posX = posX + 5;
    lugX = lugX + 5;

    if (posX > 15) {
      posX = 15;
    }

    if (lugX > 48) {
      lugX = 48;
    }
  } else if (tiempomov > (5880-400)) {  //pantalla 2
    tiempomov--;
    image(hermanastras, 0, 0, 350, 480);
    textFont(des);
    textSize(30);
    text("Su madre fallecio\ny su padre se caso\ncon una mujer con\ncorazon cruel\nque tenia dos hijas\nmalvadas y feas.", X, Y);
    Y = Y-2;

    if (Y<150) {
      Y = 150;
    }
  } else if (tiempomov > (5480-300)) {  //pantalla 3
    tiempomov--;
    image(tumba, 0, 0, 400, 480);
    textFont(des);
    textSize(30);
    text("En la tumba\nde su madre\nplanto una rama\ny crecio un\narbol magico y\naparecieon dos\npalomas blancas.", letX, letY);
    letX = letX-2;

    if (letX<420) {
      letX = 420;
    }
  } else if (tiempomov > (5180-520)) {  //pantalla 4
    tiempomov--;
    image(vestido, 300, 0, 350, 480);
    textFont(des);
    textSize(tam);
    text("El rey anuncio un baile,\npara que el principe\neligiera una esposa,\ny la malvada madrastra\nle impedia ir por estar\nsucia.\n \nCenicienta le pidio ayuda\na las palomas y dejaron\ncaer un vestido y zapatos\ndorados.", 15, 100);
    tam = tam + 1;

    if (tam>28) {
      tam = 28;
    }
  } else if (tiempomov > (4660-660)) {
    tiempomov--;
    textFont(des);
    textSize(23);
    text("El principe se enamoro\ninmediatamente de ella, pero\nCenicienta tuvo que esapar\npara regresar antes que su\nmadrastra y hermanastras\nllegaran.\n \nAl escapar dejo caer uno de sus\nzapatos de oro, rapidamente el\nprincipe lo recogio y ordeo\nque cada mujer del pueblo se\nprobara el zapato para encontrar\na la chica de esa noche.", movX, 80);
    movX = movX-3;

    if (movX<15) {
      movX = 15;
    }
    image(huyendo, 320, 0, 320, 480);
  } else if (tiempomov > (4000-590)) {
    tiempomov--;
    image(zapato, 0, 0, 370, 480);
    textFont(des);
    textSize(21);
    text("El principe hizo que cada\nhermanastra de Cenicienta\nse probara el zapato dorado,\npero al no entrarle a ninguna\nde las dos, la madrastra opto\npor cortarle auna el dedo\ngordo del piey a la otra el\ntalon.", 390, movY);
    movY = movY +3;

    if (movY>150) {
      movY = 150;
    }
  } else if (tiempomov > (3410-630)) {
    tiempomov--;
    image(ojos, 300, 0, 350, 640);
    textFont(des);
    textSize(23);
    text("El principe al enterarse que\nhabia otra mujer viviendo\nen la mansion exigio\nprobarle el zapato a ella\ntambien. El zapato le calzo\nperfectamente a Cenicienta y\nel principe entendio que ella\nera la mujer de la que se\nenamoro.\n \nLas hermanastras\npersiguiron a cenicienta y\nlas palomas comenzaron a\npicotearle el rostro \nquitandole los ojos.", movimX, 50);
    movimX = movimX +3;

    if (movimX>15) {
      movimX = 15;
    }
  } else {
    image(fin, 0, 0, 640, 480);
    if (mouseX > 69 && mouseX < 318 && mouseY > 90 && mouseY < 175) {
      noStroke();
      fill(142, 24, 28);
      rect(70, 90, 250, 90, 250, 110, 70, 110);
      textFont(titlo);
      fill(220);
      textSize(50);
      text("Reiniciar", 110, 149);
    } else {
      noStroke();
      fill(85, 46, 48);
      rect(70, 90, 250, 90, 250, 110, 70, 110);
      textFont(titlo);
      fill(220);
      textSize(50);
      text("Reiniciar", 110, 149);
    }
  }
}

void mouseClicked() {
  if (mouseX > 69 && mouseX < 318 && mouseY > 90 && mouseY < 175) {
    tiempomov = 6000;
    posX = -350;
    posY = 70;
    lugX = -400;
    lugY = 100;
    X = 380;
    Y = 520;
    PosX = 1;
    PosY = 1;
    letX = 680;
    letY = 200;
    tam = 1;
  }
}
