mixin Musician {
  void playInstrument(String instrumentName); // Abstract method.

  void playPiano() {
    playInstrument('Piano');
  }

  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician {
  void playInstrument(String instrumentName) {
    // Subclass must define.
    print('Plays the $instrumentName beautifully');
  }
}

void main() {
  Virtuoso virtuoso = Virtuoso();
  virtuoso.playInstrument("Piano");
}
