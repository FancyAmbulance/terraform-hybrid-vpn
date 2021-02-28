output "ha_vpn_gateway_interfaces" {
  value       = google_compute_ha_vpn_gateway.gateway.vpn_interfaces
  description = "List of objects with interface ID and IP addresses"
}

output "cloud_router" {
  value       = google_compute_router.router
  description = "Map of cloud router attributes. Map should match the exported resources described in the docs https://www.terraform.io/docs/providers/google/r/compute_router.html"
}

output "transit_gateway_attachment_ids" {
  description = "Set of AWS Transit Gateway Attachement IDs"
  value = toset([
    aws_vpn_connection.vpn-alpha.transit_gateway_attachment_id,
    aws_vpn_connection.vpn-beta.transit_gateway_attachment_id
  ])
}