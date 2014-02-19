import sys
import getopt
import arcpy

def main(argv):
    """Main method that parses arguments then calls the create geodatabase method."""
    name = ''
    try:
        opts, args = getopt.getopt(argv, "hn:p:", ["name=", "path="])
    except getopt.GetoptError:
        print 'create-filegdb.py -n <name> -p <path>'
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'create-filegdb.py -n <name> -p <path>'
            sys.exit()
        elif opt in ("-n", "--name"):
            name = arg
        elif opt in ("-p", "--path"):
            path = arg
        create_filegdb(name)
        
def create_filegdb(name):
    """Creates a file geodatabase using the provided name."""
    arcpy.CreateFileGDB_management("C:/temp", name, "CURRENT")
    
def create_sqlitedb(name, type):
    """Creates a sqlite using the provided name and type, ie. ST_GEOMETRY or Spatialite"""
    arcpy.gp.CreateSQLiteDatabase(sqlite_database_path, type)  
 

if __name__ == "__main__":
    main(sys.argv[1:])