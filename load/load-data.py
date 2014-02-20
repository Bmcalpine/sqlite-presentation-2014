import sys
import os
import argparse
import arcpy

__author__ = 'Jamie Phillips'

def main(args):
    """Main method that parses arguments then calls the load method."""    
    load_filegdb(args.feature, args.db)
        
def load_filegdb(feature_class, database):
    """Load data into filegdb"""
    arcpy.FeatureClassToGeodatabase_conversion(feature_class, database)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='This automates loading of the geodatabase.')
    parser.add_argument('-f','--feature', help='Feature class including full path', required=True)
    parser.add_argument('-d','--db', help='Geodatabase to load the data including full path', required=True)
    args = parser.parse_args()
    main(args)