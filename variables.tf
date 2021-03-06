# ---------------------------------------------------------------------------------------------------------------------
# VMWARE PROVIDER VARIABLES
# These are used to connect to vCenter.
# ---------------------------------------------------------------------------------------------------------------------

variable "vsphere_server" {
  type = string
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# VMWARE DATA SOURCE VARIABLES
# These are used to discover unmanaged resources used during deployment.
# ---------------------------------------------------------------------------------------------------------------------

variable datacenter_name {
  type        = string
  description = "The name of the vSphere Datacenter into which resources will be created."
}

variable cluster_name {
  type        = string
  description = "The vSphere Cluster into which resources will be created."
}

variable datastore_name {
  type        = string
  description = "The vSphere Datastore into which resources will be created."
}

variable datastore_cluster_name {
  type    = string
  default = ""
}

variable public_network_name {
  type    = string
  default = "VM Network"
}

variable private_network_name {
  type    = string
  default = "Common"
}

variable template_name {
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# VMWARE RESOURCE VARIABLES
# Variables used during the creation of resources in vSphere.
# ---------------------------------------------------------------------------------------------------------------------

variable machine_count {
  type    = number
  default = 3
}

variable hostname {
  type        = string
  default     = ""
  description = "A prefix for the virtual machine name."
}

variable infoblox_tenant_id {
  type    = string
  default = "not_applicable"
}

variable cidr {
  type    = string
  default = "10.0.0.0/24"
}

variable network_view_name {
  type    = string
  default = "default"
}

variable dns_suffix {
  type    = string
  default = "humblelab.com"
}

variable dns_view {
  type    = string
  default = "default"
}

# ---------------------------------------------------------------------------------------------------------------------
# CLOUD INIT VARIABLES
# Variables used for generation of metadata and userdata.
# ---------------------------------------------------------------------------------------------------------------------


variable username {
  type = string
}

variable ssh_public_key {
  type        = string
  description = "Location of SSH public key."
}

variable packages {
  type    = list
  default = []
}

variable dhcp {
  type    = string
  default = "true"
}

variable public_ip_address {
  type    = string
  default = ""
}

variable public_netmask {
  type    = string
  default = ""
}

variable private_ip_address {
  type    = string
  default = ""
}

variable private_netmask {
  type    = string
  default = ""
}

variable netmask {
  type    = string
  default = ""
}

variable gateway {
  type    = string
  default = ""
}

variable nameservers {
  type    = list
  default = []
}

# ---------------------------------------------------------------------------------------------------------------------
# CONSUL CONFIGURATION VARIABLES
# These are used to set variables within Consul configuration files stored in the templates directory.
# ---------------------------------------------------------------------------------------------------------------------


variable consul_config_path {
  type        = string
  default     = "/etc/consul/config.json"
  description = "The path to the Consul configuration file."
}

variable consul_username {
  type        = string
  default     = "consul"
  description = "The username under which the Consul service will be started."
}

variable consul_bin_dir {
  type        = string
  default     = "/usr/local/bin/"
  description = "The directory that the Consul binary will be extracted into."
}

variable consul_mode {
  type    = string
  default = "server"
}

variable consul_config_dir {
  type    = string
  default = "/etc/consul.d/"
}

variable consul_data_dir {
  type    = string
  default = "/opt/consul/data"
}

variable consul_log_level {
  type    = string
  default = "INFO"
}



variable consul_https_port {
  type    = string
  default = "8501"
}
variable consul_http_port {
  type    = string
  default = "8500"
}
variable enable_tls {
  type        = string
  default     = "false"
  description = "If this value is true, then consul_private_key, consul_certificate and consul_caroot need to be provided"
}
variable consul_private_key {
  type    = string
  default = ""
}

variable consul_certificate {
  type    = string
  default = ""
}

variable consul_caroot {
  type    = string
  default = ""
}

variable consul_enable_ui {
  type    = string
  default = "true"
}

variable consul_ip_addresses {
  type        = list
  default     = []
  description = "Used to identify nodes that should form the Consul cluster"
}

variable consul_datacenter {
  type    = string
  default = "dc01"
}
