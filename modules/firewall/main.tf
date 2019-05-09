resource "google_compute_firewall" "allow-http" {
  name    = "${var.env}-allow-http"
  network = "${var.env}"
  project = "${var.project}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["http-server"]
  source_ranges = ["0.0.0.0/0"]
}