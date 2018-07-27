CREATE EXTERNAL TABLE IF NOT EXISTS tweeter.Tweets (
  `tweetID` bigint,
  `userID` bigint,
  `language` string,
  `text` string,
  `createdAt` timestamp,
  `Sentiment` double 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
) LOCATION 's3://tableaudump1/'
TBLPROPERTIES ('has_encrypted_data'='false');