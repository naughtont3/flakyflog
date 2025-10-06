# ===========================================================================
#       https://www.gnu.org/software/autoconf-archive/ax_pthread.html
# ===========================================================================
#
# SYNOPSIS
#
#   ACX_PTHREAD([ACTION-IF-FOUND[, ACTION-IF-NOT-FOUND]])
#
# DESCRIPTION
#
#   This macro figures out how to build C programs using POSIX threads.

AC_DEFUN([ACX_PTHREAD], [
AC_REQUIRE([AC_CANONICAL_HOST])
AC_LANG_PUSH([C])
acx_pthread_ok=no

# Check for pthread library
AC_CHECK_LIB([pthread], [pthread_create], [acx_pthread_ok=yes])

if test "x$acx_pthread_ok" = "xyes"; then
    PTHREAD_LIBS="-lpthread"
    PTHREAD_CFLAGS="-pthread"
    ifelse([$1],,:,[$1])
else
    PTHREAD_LIBS=""
    PTHREAD_CFLAGS=""
    ifelse([$2],,:,[$2])
fi

AC_SUBST([PTHREAD_LIBS])
AC_SUBST([PTHREAD_CFLAGS])
AC_LANG_POP([C])
])
