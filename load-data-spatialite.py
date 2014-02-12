import arcpy

feature_class_to_load = ''
spatialite_db = ''

arcpy.FeatureClassToGeodatabase_conversion(feature_class_to_load, spatialite_db)