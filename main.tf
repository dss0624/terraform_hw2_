module "google_vpc" {
  source      = "./modules/google_network"
  project_id  = var.project
  vpc_name    = var.vpc_name
  auto_mode   = false
  subnet_name = var.subnet_name
  region      = var.region
  cidr        = var.cidr
}

resource "google_compute_disk" "default" {
  name = "testdisk"
  type = "pd-standard"
  zone = "us-central1-a"
  size = 1

}

resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.default.id
  instance = google_compute_instance.default.id
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }
  network_interface {
    network    = var.vpc_name
    subnetwork = module.google_vpc.subnet_self_link
  }

  metadata_startup_script = "echo hi > /test.txt"

}


