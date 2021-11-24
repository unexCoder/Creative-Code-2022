import processing.video.*;

Movie movie,movie2;

void setup() {
  size(320, 240);
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
  image(movie2, width/2, 0, width, height);
}
