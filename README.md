# pkgsuite

This is a fork of the Heirloom pkgtools, derived from OpenSolaris & UNIX SVR4.

See [README.d](README.d/) for OS-specific documentation & other information.

## Notes
- You need OpenSSL/LibreSSL headers to compile this.
- You also need GNU gettext to compile this and run.

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

NOTE: To do a statically linked build instead of dynamic, edit `src/mk.config.head.*` and append `-static` to the lines beginning with `LDFLAGS` and `CCSLDFLAGS`.


There is an example package in `example-pkg`, along with scripts that have comments on how to compile.


