$i = 1
do {
    python -m cProfile -o testing-stats create-filegdb.py
    $i++
}
until($1 -gt 10)