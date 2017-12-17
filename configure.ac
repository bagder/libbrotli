AC_PREREQ(2.57)

AC_INIT([libbrotli], [0.1.0], [-])
AC_CONFIG_SRCDIR([brotli/c/include/brotli/decode.h])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
LT_INIT
AM_INIT_AUTOMAKE()
AM_MAINTAINER_MODE
AM_INIT_AUTOMAKE([subdir-objects])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_PROG_CC

dnl AC_PATH_PROG(BROTLI	, brotli, /usr/bin/brotli)

AC_CONFIG_FILES([Makefile libbrotlienc.pc libbrotlidec.pc tools/Makefile docs/Makefile])
AC_OUTPUT
