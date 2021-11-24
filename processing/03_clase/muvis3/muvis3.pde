import processing.video.*;

Movie movie,movie2;

void setup() {
  size(640, 480);
  background(0);
  movie = new Movie(this, "flm.009.mov");
  movie.loop();
  movie2 = new Movie(this, "sns.020.mov");
  movie2.loop();
  
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movie, 0, 0, width, height);
  tint(255,255,0, 30);
  image(movie2, 0, 0, width, height);
}
