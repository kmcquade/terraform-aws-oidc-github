variable "enabled" {
  default     = true
  description = "Flag to enable/disable the creation of resources."
  type        = bool
}

variable "force_detach_policies" {
  default     = false
  description = "Flag to force detachment of policies attached to the IAM role."
  type        = string
}

variable "github_organisation" {
  description = "GitHub organisation name."
  type        = string
}

variable "github_repository" {
  description = "GitHub repository name."
  type        = string
}

variable "iam_policy_name" {
  default     = "github"
  description = "Name of the IAM policy to be assumed by GitHub."
  type        = string
}

variable "iam_policy_path" {
  default     = "/"
  description = "Path to the IAM policy."
  type        = string
}

variable "iam_role_name" {
  default     = "github"
  description = "Name of the IAM role."
  type        = string
}

variable "iam_role_path" {
  default     = "/"
  description = "Path to the IAM role."
  type        = string
}

variable "managed_policy_arns" {
  default     = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  description = "List of managed policy ARNs to apply to the IAM role."
  type        = list(string)
}

variable "max_session_duration" {
  default     = 3600
  description = "Maximum session duration in seconds."
  type        = number

  validation {
    condition     = var.max_session_duration >= 3600 && var.max_session_duration <= 43200
    error_message = "Maximum session duration must be between 1 and 12 hours."
  }
}

variable "region" {
  description = ""
  type        = string
}

variable "tags" {
  default     = {}
  description = "Map of tags to be applied to all resources."
  type        = map(string)
}