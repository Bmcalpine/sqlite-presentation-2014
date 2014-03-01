$i = 1
$shapefile = "C:\\temp\\testing-data\\address_point\\address_point.shp"

do {
    python -m cProfile -o loading-file-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\file-gdb$i.gdb"
    python -m cProfile -o loading-sqlite-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\sqlite-gdb$i.sqlite"
    python -m cProfile -o loading-spatial-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\spatialite$i.sqlite"
    $i++
}
until($1 -gt 10)