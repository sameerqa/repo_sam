provider "aws" {
region = "eu-west-2"
access_key = ""
secret_key = ""
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
bucket = "imran6667788ii"
acl = "private"
}
