AUTOMAKE_OPTIONS = foreign nostdinc subdir-objects

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = . docs tools

lib_LTLIBRARIES = libbrotlidec.la libbrotlienc.la

DECODE = brotli/c/dec/bit_reader.c brotli/c/dec/decode.c  \
  brotli/c/dec/huffman.c brotli/c/dec/state.c             \
  brotli/c/common/dictionary.c

ENCODE = brotli/c/enc/backward_references.c brotli/c/enc/histogram.c   \
 brotli/c/enc/block_splitter.c brotli/c/enc/literal_cost.c             \
 brotli/c/enc/brotli_bit_stream.c brotli/c/enc/metablock.c             \
 brotli/c/enc/encode.c brotli/c/enc/static_dict.c                      \
 brotli/c/enc/entropy_encode.c brotli/c/common/dictionary.c            \
 brotli/c/enc/utf8_util.c brotli/c/enc/compress_fragment.c             \
 brotli/c/enc/compress_fragment_two_pass.c brotli/c/enc/memory.c       \
 brotli/c/enc/backward_references_hq.c brotli/c/enc/bit_cost.c         \
 brotli/c/enc/dictionary_hash.c brotli/c/enc/cluster.c

DECODEHEADERS = brotli/c/include/brotli/decode.h brotli/c/dec/state.h  \
 brotli/c/include/brotli/types.h brotli/c/dec/bit_reader.h             \
 brotli/c/dec/huffman.h brotli/c/include/brotli/port.h                 \
 brotli/c/dec/context.h brotli/c/dec/prefix.h                          \
 brotli/c/common/constants.h brotli/c/common/dictionary.h              \
 brotli/c/common/version.h brotli/c/dec/transform.h brotli/c/dec/port.h

ENCODEHEADERS = brotli/c/include/brotli/encode.h brotli/c/enc/command.h     \
 brotli/c/enc/hash.h brotli/c/enc/ringbuffer.h brotli/c/enc/static_dict.h   \
 brotli/c/enc/fast_log.h brotli/c/enc/prefix.h                              \
 brotli/c/enc/dictionary_hash.h brotli/c/enc/find_match_length.h            \
 brotli/c/enc/backward_references.h brotli/c/enc/histogram.h                \
 brotli/c/enc/block_splitter.h brotli/c/enc/metablock.h                     \
 brotli/c/enc/context.h brotli/c/enc/literal_cost.h brotli/c/enc/cluster.h  \
 brotli/c/enc/bit_cost.h brotli/c/enc/entropy_encode.h                      \
 brotli/c/enc/brotli_bit_stream.h brotli/c/enc/write_bits.h                 \
 brotli/c/enc/static_dict_lut.h brotli/c/enc/utf8_util.h                    \
 brotli/c/enc/compress_fragment.h brotli/c/enc/compress_fragment_two_pass.h \
 brotli/c/enc/entropy_encode_static.h brotli/c/enc/memory.h                 \
 brotli/c/enc/backward_references_inc.h brotli/c/enc/cluster_inc.h          \
 brotli/c/enc/bit_cost_inc.h brotli/c/enc/quality.h brotli/c/enc/port.h     \
 brotli/c/enc/hash_forgetful_chain_inc.h brotli/c/enc/metablock_inc.h       \
 brotli/c/enc/hash_longest_match64_inc.h                                    \
 brotli/c/enc/backward_references_hq.h brotli/c/enc/histogram_inc.h         \
 brotli/c/enc/block_encoder_inc.h brotli/c/enc/hash_longest_match_inc.h     \
 brotli/c/enc/hash_longest_match_quickly_inc.h                              \
 brotli/c/enc/hash_to_binary_tree_inc.h brotli/c/enc/block_splitter_inc.h   \
 brotli/c/include/brotli/port.h brotli/c/include/brotli/types.h

INSTALLHEADERS = brotli/c/include/brotli/decode.h \
 brotli/c/include/brotli/encode.h \
 brotli/c/include/brotli/port.h   \
 brotli/c/include/brotli/types.h

EXTRA_DIST = AUTHORS README

# install headers in $(includedir)/brotli

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = libbrotlienc.pc libbrotlidec.pc
pkgincludedir= $(includedir)/brotli
pkginclude_HEADERS = $(INSTALLHEADERS)

LIBBROTLIENC_VERSION_INFO = -version-info 1:0:1
LIBBROTLIDEC_VERSION_INFO = -version-info 1:0:1
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
libbrotlidec_la_CPPFLAGS = $(AM_CPPFLAGS) $(libbrotli_la_CPPFLAGS_EXTRA) -I$(srcdir)/brotli/c/include
libbrotlidec_la_SOURCES = $(DECODE) $(DECODEHEADERS)

libbrotlienc_la_CPPFLAGS_EXTRA = -DBROTLI_BUILDING_LIBRARY
libbrotlienc_la_LDFLAGS = $(AM_LDFLAGS) $(LIBBROTLIENC_VERSION_INFO) $(LDFLAGS)
libbrotlienc_la_CFLAGS = $(AM_CFLAGS) $(libbrotli_la_CFLAGS_EXTRA)
libbrotlienc_la_CXXFLAGS =
libbrotlienc_la_CPPFLAGS = $(AM_CPPFLAGS) $(libbrotli_la_CPPFLAGS_EXTRA) -I$(srcdir)/brotli/c/include
libbrotlienc_la_SOURCES = $(ENCODE) $(ENCODEHEADERS)

# where to install the brotli headers
libbrotlienc_ladir = $(includedir)
libbrotlidec_ladir = $(includedir)

brotli:
	echo "Install symlink 'brotli' to brotli source code root"
	exit 1
