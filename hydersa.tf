provider "aws" {
region = "eu-west-2"
access_key = "AKIAX4EFVBORR4JO6UHJ"
secret_key = "mRyXNCdLySY3q8hjpLWEh66YsssB9VVm5Yn7KWl"
}
resource "aws_elasticache_cluster" "sam_cluster" {
cluster_id = "sameer"
engine = "redis"
node_type = "cache.t2.micro"
num_cache_nodes = "1"
parameter_group_name = "default.redis3.2"
engine_version = "3.2.10"
port = "6379"
}
resource "aws_s3_bucket" "mybucket" {
bucket = "imran6667788ii1982"
acl = "private"
}
resource "aws_db_instance" "dbsameer" {
allocated_storage = "10"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t2.micro"
name = "mydb"
username = "root"
password = "root"
parameter_group_name = "default.mysql5.7"
skip_final_snapshot = "true"
}
