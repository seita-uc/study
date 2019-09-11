PImage jay;

void setup() {
    size(500, 500, FX2D);
    jay = loadImage("images/jayjay_cover.jpg");
    jay.filter(THRESHOLD, 0.47);
    /*jay.filter(GRAY);*/
}

void draw() {
    /*image(jay, 0, 0);*/

    /*float x = mouseX;*/
    /*float y = mouseY;*/
    /*float c = jay.get(int(x), int(y));*/
    /*println(c);*/

    for(int i = 0; i < 100; i++) {
        float x = random(width);
        float y = random(width);
        float c = jay.get(int(x), int(y));

        if(c < -1) {
            noStroke();
            fill(random(200), 100);
            ellipse(x, y, 5, 5);
            /*stroke(0);*/
            /*line(x, y, x-random(3), y-3);*/
            /*point(random(x-25, x+25), random(y-25, y+25));*/
        } else {
            stroke(random(190, 255));
            point(x, y);
        }
    }
}

