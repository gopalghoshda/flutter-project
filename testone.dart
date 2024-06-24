// Base class Media
class Media {
  void play() {
    print('Playing media...');
  }
}

// Derived class Song inherits from Media
class Song extends Media {
  String artist;

  Song(this.artist);

  @override
  void play() {
    print('Playing song by $artist...');
  }
}

void main() {
  // Creating an instance of Media
  Media media = Media();
  media.play(); // Should print: Playing media...

  // Creating an instance of Song
  Song song = Song('Taylor Swift');
  song.play(); // Should print: Playing song by Taylor Swift...
}
