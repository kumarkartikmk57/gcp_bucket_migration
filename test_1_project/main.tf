# # Define the names of the buckets
# variable "bucket_names" {
#   default = ["bucket1", "bucket2", "bucket3", "bucket4"]
# }

# # Create GCS buckets
# resource "google_storage_bucket" "buckets" {
#   count         = length(var.bucket_names)
#   name          = "malkania-${var.bucket_names[count.index]}"
#   location      = "US"
#   force_destroy = true
# }

# # Output the URLs of the created buckets
# output "bucket_urls" {
#   value = [for bucket_name in var.bucket_names : google_storage_bucket.buckets[bucket_name].url]
}

