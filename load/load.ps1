$i = 1
$shapefile = "C:\\temp\\testing-data\\streets\\street_segmet.shp"

do {
    python -m cProfile -o loading-file-stats$1 load-data.py -f $shapefile -d "C:\\temp\\databases\file-gdb$i"
    python -m cProfile -o loading-sqlite-stats$1 load-data.py -f $shapefile -d "C:\\temp\\databases\sqlite-gdb$i"
    python -m cProfile -o loading-spatial-stats$1 load-data.py -f $shapefile -d "C:\\temp\\databases\spatial-stats$i"
    $i++
}
until($1 -gt 10)