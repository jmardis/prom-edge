from pymongo import MongoClient

client = MongoClient('mongo', 27017)

def put(event, context):
  data = event['data']
  return event['data']

def get(event, context):
  client.query("select value from"+event['data']+";")