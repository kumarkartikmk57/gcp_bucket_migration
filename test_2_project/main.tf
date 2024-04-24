# Create a GCS bucket
# resource "google_storage_bucket" "my_bucket" {
#   name          = "malkania-placeholder"
#   location      = "US"
#   force_destroy = true
# }

# Create empty objects to mimic folders
# resource "google_storage_bucket_object" "folder1" {
#   bucket = google_storage_bucket.my_bucket.name
#   name   = "folder1/"
#   content = " "
# }

# resource "google_storage_bucket_object" "folder2" {
#   bucket = google_storage_bucket.my_bucket.name
#   name   = "folder2/"
#   content = " "
# }

# resource "google_storage_bucket_object" "folder3" {
#   bucket = google_storage_bucket.my_bucket.name
#   name   = "folder3/"
#   content = " "
# }

# resource "google_storage_bucket_object" "folder4" {
#   bucket = google_storage_bucket.my_bucket.name
#   name   = "folder4/"
#   content = " "
# }
# Define the names of the buckets
variable "bucket_names" {
  default = ["bucket1", "bucket2", "bucket3", "bucket4"]
}

# Create GCS buckets
resource "google_storage_bucket" "buckets" {
  count         = length(var.bucket_names)
  name          = "malkania-${var.bucket_names[count.index]}"
  location      = "US"
  force_destroy = true
}

