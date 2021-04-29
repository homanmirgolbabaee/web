import csv
import json
import os

csvFilePath = os.getcwd()+"/processed/input.csv"
jsonFilePath = 'jsonOut.json'
data = {}
with open(csvFilePath) as csvFile:
    csvReader = csv.DictReader(csvFile)
    for rows in csvReader:
        id = rows['confidence']
        data[id]=rows
    print("sucessfull")
with open(jsonFilePath , 'w') as jsonFilePath:
    jsonFilePath.write(json.dumps(data,indent=4))
    print("sucessfull")