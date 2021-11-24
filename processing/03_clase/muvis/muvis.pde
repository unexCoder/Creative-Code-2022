import processing.video.*;

Movie movie;

void setup() {
  size(320, 240);
  background(0);
  movie = new Movie(this, "flm.009.mov");
  movie.loop();
  
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movie, 0, 0, width, height);
}
