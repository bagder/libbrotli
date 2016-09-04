# libbrotli

Wrapper scripts and code around the brotli code base.

Builds libraries out of the [brotli](https://github.com/google/brotli) decode
and encode sources. Uses autotools.

'brotlidec' is the library for decoding, decompression

'brotlienc' is the library for encoding, compression

# Build

First make sure you have `libtool`, `autoconf` and `automake` installed.

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

	#include <brotli/decode.h>
	#include <brotli/encode.h>

in your source code.

# License

Consider these build files MIT licensed. brotli itself is also under an
[MIT license](https://github.com/google/brotli/blob/master/LICENSE).

# Server-side brotli

See [ngx_brotli_module](https://github.com/cloudflare/ngx_brotli_module)
