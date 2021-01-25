variable "timezone" {
  description = "timezone"
  default     = "UTC"
}

variable "memory" {
  description = "memoria maxima funcao (MB)"
  default     = 128
}

variable "timeout" {
  description = "Lambda timeout"
  default     = 60
}

variable "batch_size" {
  description = "Numero maximo de registros passados para funcao"
  default = 100
  
}

variable "kinesis_stream_arn" {
  description = "Nome do stream de fluxo de dados"
  default = "datasprints"
}

variable "log_bucket" {
  description = "bucket S3 savar dados"
  default = "s3_datasprints"
}

variable "lambda_package_url" {
  description = "Lambda  URL"
  default = "https://github.com/Maruansilva/dataSprints/blob/master/lambda/main.py"
}

variable "handler" {
  description = "ponto de entrada funcao lambda"
  default     = "main.handler"
}

variable "runtime" {
  description = "Lambda Function runtime"
  default     = "python3.7"
}

variable "name" {
  description = "Nome do recurso"
  default = "datasprints"
}

variable "starting_position" {
  description = "Kinesis id "
  default     = "TRIM_HORIZON"
}

variable "log_type_field" {
  description = "Key name for log type"
  default     = "log_type"
}

variable "log_type_unknown_prefix" {
  description = "Log type prefix for logs without log type field"
  default     = "unknown"
}

variable "log_timestamp_field" {
  description = "Key name for log timestamp"
  default     = "time"
}

variable "log_type_field_whitelist" {
  description = "Lista de permissões de tipo de registro (se estiver vazia, todos os tipos serão processados)"
  default     = []
  type        = list(string)
}

variable "tags" {
  description = "Tags Lambda Function"
  type        = map(string)
  default     = {}
}

variable "log_retention_in_days" {
  description = "Lambda Function log reiteracao em dias"
  default     = 30
}

