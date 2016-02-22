import json

with open('data.json') as data_file:    
    data = json.load(data_file)

d = data['results'][0]['2012']['cost']
print d['avg_net_price']

# for i in d:
# 	print i


# 2013.cost.avg_net_price.overall
