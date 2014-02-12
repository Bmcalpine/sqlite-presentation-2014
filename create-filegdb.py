import arcpy

database_path = ''
database_name = ''

arcpy.CreateFileGDB_management(database_path, database_name, "CURRENT")