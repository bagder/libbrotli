# libbrotli

Wrapper scripts and code around the brotli code base.

Builds libraries out of the [brotli](https://github.com/google/brotli) decode
and encode sources. Uses autotools.

'brotlidec' is the library for decoding, decompression

'brotlienc' is the library for encoding, compression

# Build

Clone the libbrotli repository, e.g.

	$ git clone https://github.com/bagder/libbrotli

Then run:

	$ ./autogen.sh
	$ ./configure
	$ make

# Install

	$ make install

Installs the libraries and the necessary include files.

# Header files

The include files are placed in a brotli subdir under the install prefix so
include them like

        \#include &lt;brotli/dec/decode.h&gt;
        \#include &lt;brotli/enc/encode.h&gt;

in your source code.

# License

Consider these build files MIT licensed. brotli itself has its own
[license](https://github.com/google/brotli/blob/master/LICENSE)
