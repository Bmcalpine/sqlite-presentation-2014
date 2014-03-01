$i = 1
$shapefile = "C:\\temp\\testing-data\\austin_jurisdictions\\austin_jurisdictions.shp"

do {
    python -m cProfile -o loading-file-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\\loading-polygons\\file-gdb$i.gdb"
    python -m cProfile -o loading-sqlite-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\\loading-polygons\\sqlite-gdb$i.sqlite"
    python -m cProfile -o loading-spatial-stats$i load-data.py -f $shapefile -d "C:\\temp\\databases\\loading-polygons\\spatialite$i.sqlite"
    $i++
}
until($i -gt 3)