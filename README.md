# GLIC
Glitch Image Codec

Documentation: https://docs.google.com/document/d/1cdJvEmSKNAkzkU0dFUa-kb_QJB2ISQg-QfCqpHLFlck/edit?usp=sharing

## Command-line usage

1. Install [Processing](https://processing.org/download) and ensure the `processing-java` command is on your `PATH`.
2. Run `./glic-cli.sh encode input.png output.glic` to encode an image.
3. Run `./glic-cli.sh decode input.glic output.png` to decode a file.

The script runs the sketch in headless mode using `processing-java` and the arguments passed to GLIC.
