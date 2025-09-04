provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "mysql_instance" {
  name             = "${var.service_name}-mysql-instance"
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "postgres_instance" {
  name             = "${var.service_name}-postgres-instance"
  database_version = "POSTGRES_14"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "mysql_database" {
  name     = var.db_name
  instance = google_sql_database_instance.mysql_instance.name
}

resource "google_sql_database" "postgres_database" {
  name     = var.db_name
  instance = google_sql_database_instance.postgres_instance.name
}



AI modify + Edit