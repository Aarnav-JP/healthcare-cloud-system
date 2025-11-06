resource "google_dataproc_cluster" "flink_cluster" {
  name   = "${var.project_name}-flink-cluster"
  region = var.gcp_region

  cluster_config {
    master_config {
      num_instances = 1
      machine_type  = "n1-standard-2"
      disk_config {
        boot_disk_size_gb = 20
      }
    }

    worker_config {
      num_instances = 2
      machine_type  = "n1-standard-2"
      disk_config {
        boot_disk_size_gb = 20
      }
    }

    software_config {
      image_version = "2.1-debian11"
      optional_components = ["FLINK"]
    }

    gce_cluster_config {
      network = google_compute_network.vpc.name
      subnetwork = google_compute_subnetwork.subnet.name
      
      tags = ["flink-cluster"]
    }
  }
}
