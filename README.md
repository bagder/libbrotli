# libbrotli

Wrapper scripts and code around the brotli code base.

Builds a "libbrotli" library out of the
[brotli](https://github.com/google/brotli) decoder source. Uses autotools.

# Build

Create a 'brotli' symlink or checkout the brotli repo in the libbrotli root.

Then run:

    $ libtoolize
    $ aclocal
    $ autoheader
    $ autoconf
    $ automake --add-missing
    $ ./configure
    $ make

# Install

    $ make install

Installs the library and the necessary include files. The include files are
placed in a brotli subdir so include them like &lt;brotli/decode.h&gt;.


# License

Consider these build files MIT licensed. brotli itself has its own
[license](https://github.com/google/brotli/blob/master/LICENSE)
