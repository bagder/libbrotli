# libbrotli

Wrapper scripts and code around the brotli code base.

Builds a "libbrotli" library out of the
[brotli](https://github.com/google/brotli) decode and encode sources. Uses
autotools.

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

# Header files

When installing libbrotli, we decided to install the header files in the
brotli/enc and brotli/dec subdirectories. This is because the brotli team has
made public headers for encoding and decoding that use the same name but have
different contents so we cannot put all headers in the same directory.

This is filed as [issue 181](https://github.com/google/brotli/issues/181) with
the brotli project.


# License

Consider these build files MIT licensed. brotli itself has its own
[license](https://github.com/google/brotli/blob/master/LICENSE)
