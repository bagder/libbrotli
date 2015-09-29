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

Installs the libraries and the necessary include files. The include files are
placed in a brotli subdir so include them like &lt;brotli/dec/decode.h&gt; and
&lt;brotli/enc/encode.h&gt;

# Header files

When installing libbrotli, we decided to install the header files in the
brotli/enc and brotli/dec subdirectories. This is because the brotli team has
made public headers for encoding and decoding that use the same name but have
different contents so we cannot put all headers in the same directory.

This is filed as [issue 181](https://github.com/google/brotli/issues/181) with
the brotli project.

NOTE: we then split libbrotli into two libraries anyway so the two different
include directories make sense now!

# License

Consider these build files MIT licensed. brotli itself has its own
[license](https://github.com/google/brotli/blob/master/LICENSE)
