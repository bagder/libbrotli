AUTOMAKE_OPTIONS = foreign nostdinc subdir-objects

ACLOCAL_AMFLAGS = -I m4

lib_LTLIBRARIES = libbrotlidec.la libbrotlienc.la

DECODE = brotli/dec/bit_reader.c brotli/dec/decode.c		\
  brotli/dec/huffman.c brotli/dec/state.c

ENCODE = brotli/enc/backward_references.c brotli/enc/histogram.c		\
 brotli/enc/block_splitter.c brotli/enc/literal_cost.c				\
 brotli/enc/brotli_bit_stream.c brotli/enc/metablock.c brotli/enc/encode.c	\
 brotli/enc/static_dict.c brotli/enc/entropy_encode.c brotli/enc/utf8_util.c	\
 brotli/enc/compress_fragment.c brotli/enc/compress_fragment_two_pass.c		\
 brotli/enc/cluster.c brotli/enc/memory.c brotli/enc/bit_cost.c

COMMON = brotli/common/dictionary.c

DECODEHEADERS = brotli/dec/bit_reader.h brotli/dec/port.h		\
 brotli/dec/transform.h brotli/dec/context.h brotli/dec/prefix.h	\
 brotli/dec/huffman.h brotli/dec/state.h

ENCODEHEADERS = brotli/enc/backward_references.h				\
 brotli/enc/hash_forgetful_chain_inc.h brotli/enc/backward_references_inc.h	\
 brotli/enc/hash.h brotli/enc/bit_cost.h brotli/enc/hash_longest_match_inc.h	\
 brotli/enc/bit_cost_inc.h brotli/enc/hash_longest_match_quickly_inc.h		\
 brotli/enc/block_encoder_inc.h brotli/enc/histogram.h				\
 brotli/enc/block_splitter.h brotli/enc/histogram_inc.h				\
 brotli/enc/block_splitter_inc.h brotli/enc/literal_cost.h			\
 brotli/enc/brotli_bit_stream.h brotli/enc/memory.h brotli/enc/cluster.h	\
 brotli/enc/metablock.h brotli/enc/cluster_inc.h brotli/enc/metablock_inc.h	\
 brotli/enc/command.h brotli/enc/port.h brotli/enc/compress_fragment.h		\
 brotli/enc/prefix.h brotli/enc/compress_fragment_two_pass.h			\
 brotli/enc/quality.h brotli/enc/context.h brotli/enc/ringbuffer.h		\
 brotli/enc/dictionary_hash.h brotli/enc/static_dict.h				\
 brotli/enc/entropy_encode.h brotli/enc/static_dict_lut.h			\
 brotli/enc/entropy_encode_static.h brotli/enc/utf8_util.h			\
 brotli/enc/fast_log.h brotli/enc/write_bits.h brotli/enc/find_match_length.h

COMMONHEADERS = brotli/include/brotli/decode.h brotli/include/brotli/types.h	\
 brotli/include/brotli/encode.h

CPPFLAGS=-Ibrotli/include

EXTRA_DIST = AUTHORS README

# install headers in $(includedir) with subdirs
includedir = $(prefix)/include/brotli
include_HEADERS = $(COMMONHEADERS)

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
libbrotlidec_la_SOURCES = $(DECODE) $(DECODEHEADERS) $(COMMON) #$(COMMONHEADERS)

libbrotlienc_la_CPPFLAGS_EXTRA = -DBROTLI_BUILDING_LIBRARY
libbrotlienc_la_LDFLAGS = $(AM_LDFLAGS) $(LIBBROTLIENC_VERSION_INFO) $(LDFLAGS)
libbrotlienc_la_CFLAGS = $(AM_CFLAGS) $(libbrotli_la_CFLAGS_EXTRA)
libbrotlienc_la_CXXFLAGS =
libbrotlienc_la_CPPFLAGS = $(AM_CPPFLAGS) $(libbrotli_la_CPPFLAGS_EXTRA)
libbrotlienc_la_SOURCES = $(ENCODE) $(ENCODEHEADERS) $(COMMON) #$(COMMONHEADERS)

# where to install the brotli headers
libbrotlienc_ladir = $(includedir)
libbrotlidec_ladir = $(includedir)

brotli:
	echo "Install symlink 'brotli' to brotli source code root"
	exit 1
