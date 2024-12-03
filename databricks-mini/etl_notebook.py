from pyspark.sql import SparkSession
from pyspark.sql.functions import lit

# Initialize Spark session
spark = SparkSession.builder.appName("ETL Example").getOrCreate()

# Read data
input_path = "dbfs:/mnt/input-data/sample.csv"
df = spark.read.csv(input_path, header=True, inferSchema=True)

# Transform data
transformed_df = df.withColumn("processed", lit(True))

# Write data
output_path = "dbfs:/mnt/output-data/processed_sample.csv"
transformed_df.write.mode("overwrite").csv(output_path)

print(f"ETL completed. Data written to {output_path}")
