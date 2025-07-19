import json

def get_record(record_id):
    try:
        return cosmos.read_item(record_id)
    except:
        blob_data = blob.download_blob(f"{record_id}.json")
        return json.loads(blob_data)
