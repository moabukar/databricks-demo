variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}
variable "cluster_autotermination_minutes" {
  description = "The number of minutes before the cluster is terminated"
  type        = number
}
variable "cluster_num_workers" {
  description = "The number of workers in the cluster"
  type        = number
}
variable "cluster_data_security_mode" {
  description = "The data security mode of the cluster"
  type        = string
}