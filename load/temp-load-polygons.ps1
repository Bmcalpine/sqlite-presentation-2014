$i = 1
$shapefile = "C:\\temp\\testing-data\\austin_jurisdictions\\austin_jurisdictions.shp"

do {
    python load-data.py -f $shapefile -d "C:\\temp\\databases\\all\\file-gdb$i.gdb"
    python load-data.py -f $shapefile -d "C:\\temp\\databases\\all\\sqlite-gdb$i.sqlite"
    python load-data.py -f $shapefile -d "C:\\temp\\databases\\all\\spatialite$i.sqlite"
    $i++
}
until($i -gt 3)