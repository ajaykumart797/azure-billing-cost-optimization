from datetime import datetime, timedelta
import json

def archive_old_records():
    cutoff = datetime.utcnow() - timedelta(days=90)
    old_records = cosmos.query("SELECT * FROM c WHERE c.timestamp < @cutoff", params={"@cutoff": cutoff})
    for record in old_records:
        blob.upload_blob(f"{record['id']}.json", json.dumps(record))
        cosmos.delete_item(record['id'], partition_key=record['partitionKey'])
