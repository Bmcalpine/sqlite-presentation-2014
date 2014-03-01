import sys
import os
import argparse
import arcpy

__author__ = 'Jamie Phillips'

def main(args):
    """Main method that parses arguments then calls the clip method."""    
    clip(args.input, args.output, args.clip)
        
def clip(in_feature_class, out_feature_class, clip):
    """Performs an clip"""
    arcpy.Clip_analysis(in_feature_class, clip, out_feature_class, "")
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='This automates clipping.')
    parser.add_argument('-i','--input', help='Feature class to query, including full path', required=True)
    parser.add_argument('-o','--output', help='Feature class to output selection, including full path', required=True)
    parser.add_argument('-c','--clip', help='Feature class to clip by', required=True)
    args = parser.parse_args()
    main(args)