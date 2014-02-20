$i = 1
do {
    python -m cProfile -o testing-stats create-gdb.py -n -t -p
    $i++
}
until($i -gt 10)