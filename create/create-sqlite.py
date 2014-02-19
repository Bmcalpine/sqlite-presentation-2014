import arcpy

database_path = ''

arcpy.gp.CreateSQLiteDatabase(sqlite_database_path, "ST_GEOMETRY")
