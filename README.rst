test-terraform-aws
================================================================================

::

    └> terraform apply

    Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
      + create

    Terraform will perform the following actions:

      # aws_instance.example will be created
      + resource "aws_instance" "example" {
          + ami                                  = "ami-06f9b93a111451979"
          + arn                                  = (known after apply)
          + associate_public_ip_address          = (known after apply)
          + availability_zone                    = (known after apply)
          + cpu_core_count                       = (known after apply)
          + cpu_threads_per_core                 = (known after apply)
          + disable_api_stop                     = (known after apply)
          + disable_api_termination              = (known after apply)
          + ebs_optimized                        = (known after apply)
          + get_password_data                    = false
          + host_id                              = (known after apply)
          + host_resource_group_arn              = (known after apply)
          + iam_instance_profile                 = (known after apply)
          + id                                   = (known after apply)
          + instance_initiated_shutdown_behavior = (known after apply)
          + instance_lifecycle                   = (known after apply)
          + instance_state                       = (known after apply)
          + instance_type                        = "t2.micro"
          + ipv6_address_count                   = (known after apply)
          + ipv6_addresses                       = (known after apply)
          + key_name                             = (known after apply)
          + monitoring                           = (known after apply)
          + outpost_arn                          = (known after apply)
          + password_data                        = (known after apply)
          + placement_group                      = (known after apply)
          + placement_partition_number           = (known after apply)
          + primary_network_interface_id         = (known after apply)
          + private_dns                          = (known after apply)
          + private_ip                           = (known after apply)
          + public_dns                           = (known after apply)
          + public_ip                            = (known after apply)
          + secondary_private_ips                = (known after apply)
          + security_groups                      = (known after apply)
          + source_dest_check                    = true
          + spot_instance_request_id             = (known after apply)
          + subnet_id                            = "subnet-2333d62c"
          + tags                                 = {
              + "Name" = "HelloWorldInstance"
            }
          + tags_all                             = {
              + "Name" = "HelloWorldInstance"
            }
          + tenancy                              = (known after apply)
          + user_data                            = (known after apply)
          + user_data_base64                     = (known after apply)
          + user_data_replace_on_change          = false
          + vpc_security_group_ids               = [
              + "sg-0b545a7e",
            ]
        }

    Plan: 1 to add, 0 to change, 0 to destroy.

    Do you want to perform these actions?
      Terraform will perform the actions described above.
      Only 'yes' will be accepted to approve.

      Enter a value: yes

    aws_instance.example: Creating...
    aws_instance.example: Still creating... [10s elapsed]
    aws_instance.example: Still creating... [20s elapsed]
    aws_instance.example: Still creating... [30s elapsed]
    aws_instance.example: Creation complete after 32s [id=i-046f5099e99ebbee3]

    Apply complete! Resources: 1 added, 0 changed, 0 destroyed.


::

    └> make destroy
    terraform destroy
    aws_instance.example: Refreshing state... [id=i-046f5099e99ebbee3]

    Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
      - destroy

    Terraform will perform the following actions:

      # aws_instance.example will be destroyed
      - resource "aws_instance" "example" {
          - ami                                  = "ami-06f9b93a111451979" -> null
          - arn                                  = "arn:aws:ec2:us-east-1:014889281015:instance/i-046f5099e99ebbee3" -> null
          - associate_public_ip_address          = true -> null
          - availability_zone                    = "us-east-1f" -> null
          - cpu_core_count                       = 1 -> null
          - cpu_threads_per_core                 = 1 -> null
          - disable_api_stop                     = false -> null
          - disable_api_termination              = false -> null
          - ebs_optimized                        = false -> null
          - get_password_data                    = false -> null
          - hibernation                          = false -> null
          - id                                   = "i-046f5099e99ebbee3" -> null
          - instance_initiated_shutdown_behavior = "stop" -> null
          - instance_state                       = "running" -> null
          - instance_type                        = "t2.micro" -> null
          - ipv6_address_count                   = 0 -> null
          - ipv6_addresses                       = [] -> null
          - monitoring                           = false -> null
          - placement_partition_number           = 0 -> null
          - primary_network_interface_id         = "eni-05a3c1185e62175a1" -> null
          - private_dns                          = "ip-172-30-5-252.ec2.internal" -> null
          - private_ip                           = "172.30.5.252" -> null
          - public_dns                           = "ec2-35-171-244-4.compute-1.amazonaws.com" -> null
          - public_ip                            = "35.171.244.4" -> null
          - secondary_private_ips                = [] -> null
          - security_groups                      = [] -> null
          - source_dest_check                    = true -> null
          - subnet_id                            = "subnet-2333d62c" -> null
          - tags                                 = {
              - "Name" = "HelloWorldInstance"
            } -> null
          - tags_all                             = {
              - "Name" = "HelloWorldInstance"
            } -> null
          - tenancy                              = "default" -> null
          - user_data_replace_on_change          = false -> null
          - vpc_security_group_ids               = [
              - "sg-0b545a7e",
            ] -> null

          - capacity_reservation_specification {
              - capacity_reservation_preference = "open" -> null
            }

          - cpu_options {
              - core_count       = 1 -> null
              - threads_per_core = 1 -> null
            }

          - credit_specification {
              - cpu_credits = "standard" -> null
            }

          - enclave_options {
              - enabled = false -> null
            }

          - maintenance_options {
              - auto_recovery = "default" -> null
            }

          - metadata_options {
              - http_endpoint               = "enabled" -> null
              - http_protocol_ipv6          = "disabled" -> null
              - http_put_response_hop_limit = 1 -> null
              - http_tokens                 = "optional" -> null
              - instance_metadata_tags      = "disabled" -> null
            }

          - private_dns_name_options {
              - enable_resource_name_dns_a_record    = false -> null
              - enable_resource_name_dns_aaaa_record = false -> null
              - hostname_type                        = "ip-name" -> null
            }

          - root_block_device {
              - delete_on_termination = true -> null
              - device_name           = "/dev/xvda" -> null
              - encrypted             = false -> null
              - iops                  = 100 -> null
              - tags                  = {} -> null
              - throughput            = 0 -> null
              - volume_id             = "vol-0a2db565471472bc3" -> null
              - volume_size           = 8 -> null
              - volume_type           = "gp2" -> null
            }
        }

    Plan: 0 to add, 0 to change, 1 to destroy.

    Do you really want to destroy all resources?
      Terraform will destroy all your managed infrastructure, as shown above.
      There is no undo. Only 'yes' will be accepted to confirm.

      Enter a value: yes

    aws_instance.example: Destroying... [id=i-046f5099e99ebbee3]
    aws_instance.example: Still destroying... [id=i-046f5099e99ebbee3, 10s elapsed]
    aws_instance.example: Still destroying... [id=i-046f5099e99ebbee3, 20s elapsed]
    aws_instance.example: Destruction complete after 30s

    Destroy complete! Resources: 1 destroyed.

