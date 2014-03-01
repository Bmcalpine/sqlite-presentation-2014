$i = 1

# Local variables:
$address_point = "C:\\temp\\databases\\all\\file-gdb1.gdb\\address_point"
$main_address_point = "C:\\temp\\databases\\all\\sqlite-gdb1.sqlite\\main.address_point"
$main_address_point__2_ = "C:\\temp\\databases\\all\\spatialite1.sqlite\\main.address_point"

$full_purpose_austin = "C:\\temp\\databases\\all\\file-gdb1.gdb\\full_purpose_austin"
$main_full_purpose_austin = "C:\\temp\\databases\\all\\sqlite-gdb1.sqlite\\main.full_purpose_austin"
$main_full_purpose_austin__2_ = "C:\\temp\\databases\\all\\spatialite1.sqlite\\main.full_purpose_austin"


do {
    python -m cProfile -o clip-file-stats$i clip.py -i $address_point -o "C:\\temp\\databases\\all\\file-gdb1.gdb\\address_point_Clip$i" -c $full_purpose_austin
    python -m cProfile -o clip-sqlite-stats$i clip.py -i $main_address_point -o "C:\\temp\\databases\\all\\main_Clip$i.shp" -c $main_full_purpose_austin
    python -m cProfile -o clip-spatial-stats$i clip.py -i $main_address_point__2_ -o "C:\\temp\\databases\\all\\main_Clip_S$i.shp" -c $main_full_purpose_austin__2_
    $i++
}
until($i -gt 10)