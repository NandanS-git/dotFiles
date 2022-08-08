# dotFiles

# AMGX build
cmake -DCMAKE_SHARED_LINKER_FLAGS="-Wl,-rpath -Wl,/home/sroy/Apps/gcc_7.4.0/lib64/libstdc++.so.6" ../

# Hwloc bind to socket 0 logical core 0
hwloc-bind -v socket:0.pu:0 ./app.o

# append names tp
for f in *; do echo -n "\""${f##*/}"\" " ; done > file
