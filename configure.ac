AC_INIT([hello-pthread], [1.0], [support@example.com])
AM_INIT_AUTOMAKE([-Wall -Werror foreign subdir-objects])
AC_PROG_CC
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIRS([m4])
AC_CONFIG_FILES([
 Makefile
])

# Check for pthread library
ACX_PTHREAD([
    LIBS="$PTHREAD_LIBS $LIBS"
    CFLAGS="$CFLAGS $PTHREAD_CFLAGS"
],[
    AC_MSG_ERROR([pthread library not found])
])

AC_OUTPUT
