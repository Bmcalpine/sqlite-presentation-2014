$i = 1
do {
    python -m cProfile -o testing-stats load-data.py -f -d
    $i++
}
until($1 -gt 10)