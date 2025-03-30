## LodePNG Extension for Encoding and Decoding PNG

This is a PNG encoding/decoding extension for Ren-C.

It depends on having the IMAGE! extension either built into the interpreter,
or loaded dynamically.

It is based on code provided by LodePNG:

  http://lodev.org/lodepng/

  https://github.com/lvandeve/lodepng

LodePNG is an encoder/decoder that is implemented in a single .c file and
header file, and is light and easy to work with.

It is known to be slower than the more heavyweight "libpng" library, and
does not support the progressive/streaming decoding used by web browsers.

For this reason, the extension is called "lodepng", to allow for alternative
PNG decoding extensions in the future.


### Historical note on R3-Alpha's PNG implementation

R3-Alpha had some PNG decoding in a file called %u-png.c:

  https://github.com/rebol/rebol/blob/25033f897b2bd466068d7663563cd3ff64740b94/src/core/u-png.c

That decoder appears to be original code from Rebol Technologies, as there are
no comments saying otherwise.

Saphirion apparently hit bugs in the encoding that file implemented.  But
rather than try and figure out how to fix it, they just included LodePNG--and
adapted it for use in encoding only, while retaining %u-png.c for decoding.

So for simplicity, Ren-C went ahead and removed %u-png.c to use LodePNG for
decoding and PNG file identification as well.
