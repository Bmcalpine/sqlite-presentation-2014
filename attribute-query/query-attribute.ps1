$i = 1

# Local variables:
$address_point = "C:\\temp\\databases\\all\\file-gdb1.gdb\\address_point"
$main_address_point = "C:\\temp\\databases\\all\\sqlite-gdb1.sqlite\\main.address_point"
$main_address_point__2_ = "C:\\temp\\databases\\all\\spatialite1.sqlite\\main.address_point"
$file_query = "STREET_NAM LIKE 'BARTON%'"
$query_part_one = "\"""
$query_part_two = "STREET_NAM"
$query_part_three = "\"" LIKE 'BARTON%'"
$sqlite_query = $query_part_one + $query_part_two + $query_part_three

do {
    python -m cProfile -o query-file-stats$i query-attribute.py -i $address_point -o "C:\\temp\\databases\\all\\file-gdb1.gdb\\address_point_Select$i" -q $file_query
    python -m cProfile -o query-sqlite-stats$i query-attribute.py -i $main_address_point -o "C:\\temp\\databases\\all\\main_Select$i.shp" -q $sqlite_query
    python -m cProfile -o query-spatial-stats$i query-attribute.py -i $main_address_point__2_ -o "C:\\temp\\databases\\all\\main_Select1$i.shp" -q $sqlite_query
    $i++
}
until($i -gt 10)