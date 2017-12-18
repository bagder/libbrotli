bin_PROGRAMS = brotli

brotli_CPPFLAGS = -I$(top_srcdir)/brotli/c/include
brotli_SOURCES = brotli.c
brotli_LDADD = $(top_builddir)/libbrotlienc.la $(top_builddir)/libbrotlidec.la  -lm

install-exec-hook:
	ln -sf brotli \
		$(DESTDIR)$(bindir)/unbrotli$(EXEEXT)
