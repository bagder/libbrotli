# !/bin/sh -e

AUTORECONF=`which autoreconf 2>/dev/null`
if test $? -ne 0; then
  echo "No 'autoreconf' found. You must install the autoconf package."
  exit 1
fi

GIT=`which git 2>/dev/null`
if test $? -ne 0; then
  echo "No 'git' found. You must install the git package."
  exit 1
fi

$GIT submodule init
$GIT submodule update

# create m4 before autoreconf
mkdir m4 2>/dev/null

$AUTORECONF --install --force --symlink || exit $?

echo
echo "----------------------------------------------------------------"
echo "Initialized build system. For a common configuration please run:"
echo "----------------------------------------------------------------"
echo
echo "./configure"
echo
