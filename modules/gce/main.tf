# Create a Compute Engine instance with e2-medium machine type
resource "google_compute_instance" "vm_instance" {
  project = "vai-kldmkr1"
  zone = "us-central1-a"
  name         = "testinst-1"
  machine_type = "e2-small"  # Set machine type to e2-medium

  # Define the boot disk
  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-11" # Debian 11 image
    }
  }

  # Define the network interface
  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }

  # Tags (optional)
  tags = ["web", "dev"]

  # Metadata (optional)
  metadata = {
    startup-script = "echo Hello, World! > /var/tmp/startup-script.log"
  }
}