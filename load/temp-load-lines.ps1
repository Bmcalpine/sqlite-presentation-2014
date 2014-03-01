$i = 1
$shapefile = "C:\\temp\\testing-data\\streets\\street_segment.shp"

do {
    python -m cProfile -o loading-file-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\\all\\file-gdb$i.gdb"
    python -m cProfile -o loading-sqlite-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\\all\\sqlite-gdb$i.sqlite"
    python -m cProfile -o loading-spatial-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\\all\\spatialite$i.sqlite"
    $i++
}
until($i -gt 3)