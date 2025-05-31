variable "project" {
  description = "O ID do projeto Google Cloud"
  type        = string
  default     = "ivory-lotus-422617-s5"
}

variable "region" {
  description = "Região do GCP"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zona do GCP"
  type        = string
  default     = "us-central1-a"
}
