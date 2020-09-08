# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_07_01
  module Models
    #
    # Profile for the container service agent pool.
    #
    class ManagedClusterAgentPoolProfile < ManagedClusterAgentPoolProfileProperties

      include MsRestAzure

      # @return [String] Unique name of the agent pool profile in the context
      # of the subscription and resource group.
      attr_accessor :name


      #
      # Mapper for ManagedClusterAgentPoolProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterAgentPoolProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterAgentPoolProfile',
            model_properties: {
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmSize',
                type: {
                  name: 'String'
                }
              },
              os_disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osDiskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              vnet_subnet_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vnetSubnetID',
                type: {
                  name: 'String'
                }
              },
              max_pods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPods',
                type: {
                  name: 'Number'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osType',
                default_value: 'Linux',
                type: {
                  name: 'String'
                }
              },
              max_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxCount',
                type: {
                  name: 'Number'
                }
              },
              min_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minCount',
                type: {
                  name: 'Number'
                }
              },
              enable_auto_scaling: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableAutoScaling',
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mode',
                type: {
                  name: 'String'
                }
              },
              orchestrator_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'orchestratorVersion',
                type: {
                  name: 'String'
                }
              },
              node_image_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nodeImageVersion',
                type: {
                  name: 'String'
                }
              },
              upgrade_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'upgradeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AgentPoolUpgradeSettings'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              availability_zones: {
                client_side_validation: true,
                required: false,
                serialized_name: 'availabilityZones',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              enable_node_public_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableNodePublicIP',
                type: {
                  name: 'Boolean'
                }
              },
              scale_set_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scaleSetPriority',
                default_value: 'Regular',
                type: {
                  name: 'String'
                }
              },
              scale_set_eviction_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scaleSetEvictionPolicy',
                default_value: 'Delete',
                type: {
                  name: 'String'
                }
              },
              spot_max_price: {
                client_side_validation: true,
                required: false,
                serialized_name: 'spotMaxPrice',
                type: {
                  name: 'Double'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              node_labels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeLabels',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              node_taints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeTaints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              proximity_placement_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'proximityPlacementGroupID',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  Pattern: '^[a-z][a-z0-9]{0,11}$'
                },
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
