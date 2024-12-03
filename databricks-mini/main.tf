resource "databricks_cluster" "etl_cluster" {
  cluster_name            = "etl-cluster"
  spark_version           = "13.3.x-scala2.12"
  node_type_id            = "i3.xlarge"
  autotermination_minutes = 20
  num_workers             = 2
}

resource "databricks_notebook" "etl_notebook" {
  path     = "/Users/mohameda/Documents/learning/databricks-demo/base.sql"
  language = "PYTHON"
  content  = filebase64("${path.module}/etl_notebook.py")
}

resource "databricks_job" "example" {
  name = "example-job"

  new_cluster {
    spark_version = "13.3.x-scala2.12"
    node_type_id  = "i3.xlarge"
    num_workers   = 2
  }

  notebook_task {
    notebook_path = "/Users/example@example.com/ExampleNotebook"
  }
}

resource "databricks_secret_scope" "example" {
  name = "example-scope"
}

resource "databricks_secret" "example" {
  key          = "example-key"
  string_value = "example-value"
  scope        = databricks_secret_scope.example.name
}
