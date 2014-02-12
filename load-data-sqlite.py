import arcpy

feature_class_to_load = ''
sqlite_db = ''

arcpy.FeatureClassToGeodatabase_conversion(feature_class_to_load, sqlite_db)