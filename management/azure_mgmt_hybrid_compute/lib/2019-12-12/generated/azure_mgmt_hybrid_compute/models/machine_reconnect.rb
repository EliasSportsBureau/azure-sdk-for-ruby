# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::HybridCompute::Mgmt::V2019_12_12
  module Models
    #
    # Describes a hybrid machine reconnect.
    #
    class MachineReconnect

      include MsRestAzure

      # @return [String] Specifies the hybrid machine unique ID.
      attr_accessor :vm_id

      # @return [String] Public Key that the client provides to be used during
      # initial resource onboarding.
      attr_accessor :client_public_key


      #
      # Mapper for MachineReconnect class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MachineReconnect',
          type: {
            name: 'Composite',
            class_name: 'MachineReconnect',
            model_properties: {
              vm_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmId',
                type: {
                  name: 'String'
                }
              },
              client_public_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientPublicKey',
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
