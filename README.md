# libbrotli

Wrapper scripts and code around the brotli code base.

Builds a "libbrotli" library out of the
[brotli](https://github.com/google/brotli) decoder source. Uses autotools.

# Build

Create a 'brotli' symlink or checkout the brotli repo in the libbrotli root.

Then run:

    $ aclocal
    $ autoheader
    $ autoconf
    $ automake --add-missing
    $ ./configure
    $ make

... and then to install libbrotli:

    $ make install

# License

Consider these build files MIT licensed. brotli itself has its own
[license](https://github.com/google/brotli/blob/master/LICENSE)
