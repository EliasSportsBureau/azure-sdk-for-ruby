# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::HybridCompute::Mgmt::V2019_12_12
  module Models
    #
    # Model object.
    #
    #
    class MachineIdentity < Identity

      include MsRestAzure


      #
      # Mapper for MachineIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Machine_identity',
          type: {
            name: 'Composite',
            class_name: 'MachineIdentity',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ResourceIdentityType'
                }
              }
            }
          }
        }
      end
    end
  end
end
