# pkgtools

This is a fork of the Heirloom pkgtools, derived from OpenSolaris & UNIX SVR4.

## Confirmed Working Systems

|   OS  |   Components tested with |
| ----- | ------------------------ |
| Debian GNU/Linux x86_64 (11.x) | Glibc 2.31, GNU Binutils (ar, ld, gold) 2.35.2, byacc 1.9, bmake 20200710, GNU Bison 3.7.5, Clang 11.0.1 |

## Building

To compile:

```
cd src
./configure     # prepend with CC="cc", YACC="yacc", etc. if you want a binary name not specified in the configure script.
make -j4        # this runs make with 4 threads, change according to your needs.
sudo make install
```

To clean the directories after running `make`:

```
make mrproper
```

NOTE: To do a statically linked build instead of dynamic, edit `src/mk.config.head` and append `-static` to the lines beginning with `LDFLAGS` and `CCSLDFLAGS`.


There is an example package in `example-pkg`, along with scripts that have comments on how to compile.
