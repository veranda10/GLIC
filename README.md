# GLIC
Glitch Image Codec

Documentation: https://docs.google.com/document/d/1cdJvEmSKNAkzkU0dFUa-kb_QJB2ISQg-QfCqpHLFlck/edit?usp=sharing

## Command-line usage

1. Install [Processing](https://processing.org/download) and ensure the `processing-java` tool is on your `PATH`. If the command lives elsewhere you can set the environment variable `PROCESSING_JAVA` to its full path.
2. Run `./glic-cli.sh encode input.png output.glic` to encode an image.
3. Run `./glic-cli.sh decode input.glic output.png` to decode a file.

The helper script verifies that `processing-java` (or the command specified in
`PROCESSING_JAVA`) is available and runs the sketch in headless mode using
`processing-java --run --args <action> <input> <output>`. If it cannot find the
command, or if `processing-java` fails because the bundled JDK is missing,
install a recent copy of Processing that includes a JDK or set `JAVA_HOME` to a
valid JDK before running the script.
