output "ip_bdd" {
  description = "Adresse IP de connexion pour la base de données"
  value       = module.bdd.vm_ip
}

output "ip_app" {
  description = "Adresse IP de connexion pour l'application"
  value       = module.app.vm_ip
}

output "ansible_user" {
  description = "Utilisateur pour se connecter via SSH/Ansible"
  value       = var.vm_user
}
