# Define the Google Provider
provider "google" {
    project = "google-project-id"
    region = "asia-south1"
    zone = "asia-south1-a"
}
# Create a VM instance
resource "google_compute_instance" "vm_instance"    {
    name = "terraform-vm-instance"
    machine_type = "e2-micro"

    boot_disk {
      initialize_params {
        image = "ubuntu-os-cloud/ubuntu-2024-lts" # Ubuntu 20.04 LTS image
      }
    }

    network_interface {
    # A default network is created for all GCP Projects 
      network = "default"
      access_config {
        
      }
    }
}
# Create a Google Cloud Storage Bucket
resource "google_storage_bucket" "terraform-storage-bucket" {
    name = "demo-terraform-storage-bucket"
    location = "IN"
}