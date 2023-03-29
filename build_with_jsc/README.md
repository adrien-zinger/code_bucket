# To make this work...

...You may install the latest javascriptcoregtk. You probably already have it, if you are on linux use that command to check if something goes out:

`find /usr/lib -name "javascriptcoregtk-4.0.pc"`

...You probably don't have to do that but if you have a pkgconfig issue,

```sh
pkg-config --cflags javascriptcoregtk-4.0 ${path to javascriptcoregtk-4.0.pc}

# It can also help
# sudo ln -s ${path} /usr/lib/pkgconfig/javascriptcoregtk-4.0.pc
```

...You may clone the wasmerio repository or/and change the Cargo.toml dependencies.