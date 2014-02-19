import sys
import os
import argparse
import arcpy

__author__ = 'Jamie Phillips'

def main(args):
    """Main method that parses arguments then calls the create geodatabase method."""    
    if args.type == 'FILEGDB':
        create_filegdb(args.name, args.path)
    elif args.type == 'ST_GEOMETRY' or args.type == 'SPATIALITE':
        create_sqlitedb(args.name, args.type, args.path)
        
def create_filegdb(name, path):
    """Creates a file geodatabase using the provided name."""
    arcpy.CreateFileGDB_management(path, name, "CURRENT")
    
def create_sqlitedb(name, type, path):
    """Creates a sqlite using the provided name and type, ie. ST_GEOMETRY or Spatialite"""
    arcpy.gp.CreateSQLiteDatabase(os.path.join(path, name), type)  
 

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='This automates creation of different geodatabase types.')
    parser.add_argument('-n','--name', help='Name of geodatabase', required=True)
    parser.add_argument('-t','--type', help='Type of geodatabase: FILEGDB, ST_GEOMETRY, SPATIALITE', required=True)
    parser.add_argument('-p','--path', help='Path to save the geodatabase', required=True)
    args = parser.parse_args()
    main(args)