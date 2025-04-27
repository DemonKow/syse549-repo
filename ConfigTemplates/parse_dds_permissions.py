with open("DDS_Permissions_Unparsed.xml", "r") as unparsedFile:
    readUnparsedData = unparsedFile.read()
    splitFiles = readUnparsedData.split("<!--Delimiter for Script-->")
    
    for delimitedFile in splitFiles:
        fileName = ""
        splitLines = delimitedFile.split("\n")
        
        for line in splitLines:
            if "<grant" in line:
                filteredString = line.replace("<grant name=","")
                fileName = filteredString.replace(">","")
                fileName = fileName.replace("\"","")
                fileName = fileName.replace("\t","")
                fileName = fileName.replace(" ","") 
                fileName = fileName + "_Permissions.xml"
                   
        if fileName != "":
            print("Writing permissions file for ", fileName)
            with open(fileName, "w") as parsedFile:
                parsedFile.write(delimitedFile)
                parsedFile.close()
            
    unparsedFile.close()