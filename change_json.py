import json

json_file = open("db.json")
json_data = json.load(json_file)
output_data = {}

for o in json_data["objects"]:
    row = []
    for r in o["rows"]:
        row_data = {}
        for i in range(len(r)):
            row_data[o["columns"][i]["name"]] = r[i]
        row.append(row_data)
    output_data[o["name"]]=row

json_file.close()
json_file = open("CC.json", "w")
json.dump(output_data, json_file)
json_file.close()