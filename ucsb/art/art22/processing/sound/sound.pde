import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
FFT fft;
float y = 100;

void setup() {
    size(800, 600);
    background(255);

    minim = new Minim(this);
    song = minim.loadFile("data/Ciani.mp3", 1024);
    song.loop();
}

void draw() {
    fill(255, 3);
    noStroke();
    rect(0, 0, width, height);
    for(int i = 0; i < song.bufferSize() - 1; i++) {
        stroke(0, random(1, 60));
        float x1 = map(i, 0, song.bufferSize(), 0, width);
        float x2 = map(i+1, 0, song.bufferSize(), 0, width);
        float waveHeight = map(song.left.get(i+1), -1, 1, -mouseY, mouseY);
        if(random(100)>69) line(x1, y, x2, y - waveHeight);
    }

    y += 0.7;
    if(y > height) y = 0;
}

void mousePressed() {
    background(255);
}
