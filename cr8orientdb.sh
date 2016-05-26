#
# Creates an OrientDB database using a volume on local filesystem (e.g. /data/orientdb)
#
ODBPWD=$1

docker run -d --name orientdb -p 2424:2424 -p 2480:2480 \
    -v /data/orientdb/config:/orientdb/config \
    -v /data/orientdb/databases:/orientdb/databases \
    -v /data/orientdb/backup:/orientdb/backup \
    -e ORIENTDB_ROOT_PASSWORD=$ODBPWD \
    orientdb:latest
    
