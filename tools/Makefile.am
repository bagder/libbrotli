bin_PROGRAMS = brotli

brotli_CPPFLAGS = -I$(top_srcdir)/brotli/c/include
brotli_SOURCES = $(top_srcdir)/brotli/c/tools/brotli.c
brotli_LDADD = $(top_builddir)/libbrotlienc.la $(top_builddir)/libbrotlidec.la  -lm
