import sys
import os
import argparse
import arcpy

__author__ = 'Jamie Phillips'

def main(args):
    """Main method that parses arguments then calls the query method."""    
    query_attribute(args.input, args.output, args.query)
        
def query_attribute(in_feature_class, out_feature_class, query):
    """Performs an attribute query"""
    arcpy.Select_analysis(in_feature_class, out_feature_class, query)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='This automates query a geodatabase.')
    parser.add_argument('-i','--input', help='Feature class to query, including full path', required=True)
    parser.add_argument('-o','--output', help='Feature class to output selection, including full path', required=True)
    parser.add_argument('-q','--query', help='Where clause used to select features', required=True)
    args = parser.parse_args()
    main(args)