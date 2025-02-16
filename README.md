# Talos on Proxmox with Terraform

This project provides a Terraform configuration to automate the deployment of a Talos Linux cluster on Proxmox. It streamlines the process of creating virtual machines, provisioning them with Talos, and configuring the network.

## Features

* Automated Talos cluster deployment on Proxmox.
* Flexible configuration through variables (e.g., VM resources, network settings).
* Simple and easy-to-use Terraform setup.

## Prerequisites

* Ubuntu Desktop 24.04.1 LTS installed and updated - https://ubuntu.com/download/desktop
* Terraform installed and configured - https://developer.hashicorp.com/terraform/install
* Proxmox server with API access enabled.
* Talos Linux installation image.

## Usage

1. Clone this repository.
2. Update the `variables.tf` file with your desired settings.
3. Run `terraform init` to initialize the project.
4. Run `terraform apply` to deploy the Talos cluster.

## Project Structure

* `variables.tf`: Defines variables for the deployment.
* `main.tf`: Contains the main Terraform configuration.
* `outputs.tf`: Specifies the outputs from the deployment.
* `cloud-config.yaml`: Talos node configuration.

## Troubleshooting

* **Proxmox API connection issues:** Verify your Proxmox API credentials and connectivity.
* **Talos installation errors:** Check the Talos installation logs in the Proxmox console.
* **Network problems:** Review the network configuration in `variables.tf`.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the MIT License.