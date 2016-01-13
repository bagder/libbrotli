AUTOMAKE_OPTIONS = foreign nostdinc subdir-objects

ACLOCAL_AMFLAGS = -I m4

lib_LTLIBRARIES = libbrotlidec.la libbrotlienc.la

DECODE = brotli/dec/bit_reader.c brotli/dec/decode.c		\
  brotli/dec/huffman.c brotli/dec/state.c brotli/dec/streams.c	\
  brotli/dec/dictionary.c

ENCODE = brotli/enc/backward_references.cc brotli/enc/histogram.cc	\
 brotli/enc/block_splitter.cc brotli/enc/literal_cost.cc		\
 brotli/enc/brotli_bit_stream.cc brotli/enc/metablock.cc		\
 brotli/enc/encode.cc brotli/enc/static_dict.cc				\
 brotli/enc/encode_parallel.cc brotli/enc/streams.cc			\
 brotli/enc/entropy_encode.cc brotli/enc/dictionary.cc			\
 brotli/enc/utf8_util.cc

DECODEHEADERS = brotli/dec/decode.h brotli/dec/state.h			\
 brotli/dec/streams.h brotli/dec/types.h brotli/dec/bit_reader.h	\
 brotli/dec/huffman.h brotli/dec/port.h brotli/dec/context.h            \
 brotli/dec/dictionary.h brotli/dec/transform.h brotli/dec/prefix.h

ENCODEHEADERS = brotli/enc/encode.h brotli/enc/command.h		\
 brotli/enc/hash.h brotli/enc/ringbuffer.h brotli/enc/static_dict.h	\
 brotli/enc/streams.h brotli/enc/fast_log.h brotli/enc/prefix.h         \
 brotli/enc/dictionary_hash.h brotli/enc/find_match_length.h            \
 brotli/enc/port.h brotli/enc/transform.h brotli/enc/dictionary.h       \
 brotli/enc/backward_references.h brotli/enc/histogram.h                \
 brotli/enc/block_splitter.h brotli/enc/metablock.h brotli/enc/context.h\
 brotli/enc/literal_cost.h brotli/enc/cluster.h brotli/enc/bit_cost.h   \
 brotli/enc/entropy_encode.h brotli/enc/brotli_bit_stream.h             \
 brotli/enc/write_bits.h brotli/enc/static_dict_lut.h                   \
 brotli/enc/encode_parallel.h brotli/enc/types.h

EXTRA_DIST = AUTHORS README

# install headers in $(includedir) with subdirs
nobase_include_HEADERS = $(DECODEHEADERS) $(ENCODEHEADERS)

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = libbrotlienc.pc libbrotlidec.pc
pkgincludedir= $(includedir)/brotli
pkginclude_HEADERS = 

LIBBROTLIENC_VERSION_INFO = -version-info 1:0:0
LIBBROTLIDEC_VERSION_INFO = -version-info 1:0:0
# This flag accepts an argument of the form current[:revision[:age]]. So,
# passing -version-info 3:12:1 sets current to 3, revision to 12, and age to
# 1.
#
# If either revision or age are omitted, they default to 0. Also note that age
# must be less than or equal to the current interface number.
#
# Here are a set of rules to help you update your library version information: 
#
# 1.Start with version information of 0:0:0 for each libtool library.
#
# 2.Update the version information only immediately before a public release of
# your software. More frequent updates are unnecessary, and only guarantee
# that the current interface number gets larger faster.
#
# 3.If the library source code has changed at all since the last update, then
# increment revision (c:r+1:a)
#
# 4.If any interfaces have been added, removed, or changed since the last
# update, increment current, and set revision to 0. (c+1:r=0:a)
#
# 5.If any interfaces have been added since the last public release, then
# increment age. (c:r:a+1)
#
# 6.If any interfaces have been removed since the last public release, then
# set age to 0. (c:r:a=0)
#

libbrotlidec_la_CPPFLAGS_EXTRA = -DBROTLI_BUILDING_LIBRARY
libbrotlidec_la_LDFLAGS = $(AM_LDFLAGS) $(LIBBROTLIDEC_VERSION_INFO) $(LDFLAGS)
libbrotlidec_la_CFLAGS = $(AM_CFLAGS) $(libbrotli_la_CFLAGS_EXTRA)
libbrotlidec_la_CXXFLAGS =
libbrotlidec_la_CPPFLAGS = $(AM_CPPFLAGS) $(libbrotli_la_CPPFLAGS_EXTRA)
libbrotlidec_la_SOURCES = $(DECODE) $(DECODEHEADERS)

libbrotlienc_la_CPPFLAGS_EXTRA = -DBROTLI_BUILDING_LIBRARY
libbrotlienc_la_LDFLAGS = $(AM_LDFLAGS) $(LIBBROTLIENC_VERSION_INFO) $(LDFLAGS)
libbrotlienc_la_CFLAGS = $(AM_CFLAGS) $(libbrotli_la_CFLAGS_EXTRA)
libbrotlienc_la_CXXFLAGS =
libbrotlienc_la_CPPFLAGS = $(AM_CPPFLAGS) $(libbrotli_la_CPPFLAGS_EXTRA)
libbrotlienc_la_SOURCES = $(ENCODE) $(ENCODEHEADERS)

# where to install the brotli headers
libbrotlienc_ladir = $(includedir)
libbrotlidec_ladir = $(includedir)

brotli:
	echo "Install symlink 'brotli' to brotli source code root"
	exit 1
