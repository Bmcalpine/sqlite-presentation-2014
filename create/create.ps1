$i = 1
do {
    python -m cProfile -o file-stats$i create-gdb.py -n file-gdb$i -t FILEGDB -p "C:\\temp\\databases\\loading-lines"
    python -m cProfile -o sqlite-stats$i create-gdb.py -n sqlite-gdb$i -t ST_GEOMETRY -p "C:\\temp\\databases\\loading-lines"
    python -m cProfile -o spatial-stats$i create-gdb.py -n spatialite$i -t SPATIALITE -p "C:\\temp\\databases\\loading-lines"
    $i++
}
until($i -gt 3)