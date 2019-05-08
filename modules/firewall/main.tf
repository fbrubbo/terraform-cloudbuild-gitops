resource "google_compute_firewall" "allow-http" {
  name    = "dfault-allow-http"
  network = "default"
  project = "${var.project}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["allow-http"]
  source_ranges = ["0.0.0.0/0"]
}