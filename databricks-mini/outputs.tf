output "cluster_id" {
  value = databricks_cluster.example.id
}

output "job_id" {
  value = databricks_job.example.job_id
}

output "secret_scope_name" {
  value = databricks_secret_scope.example.name
}

##

output "databricks_cluster_id" {
  value = databricks_cluster.example.id
}

output "databricks_job_id" {
  value = databricks_job.example.job_id
}

output "databricks_secret_scope" {
  value = databricks_secret_scope.example.name
}
