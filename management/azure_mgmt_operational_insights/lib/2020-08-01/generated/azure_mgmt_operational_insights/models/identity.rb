# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_08_01
  module Models
    #
    # Identity for the resource.
    #
    class Identity

      include MsRestAzure

      # @return [String] The principal ID of resource identity.
      attr_accessor :principal_id

      # @return [String] The tenant ID of resource.
      attr_accessor :tenant_id

      # @return [IdentityType] The identity type. Possible values include:
      # 'SystemAssigned', 'None'
      attr_accessor :type


      #
      # Mapper for Identity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Identity',
          type: {
            name: 'Composite',
            class_name: 'Identity',
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
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'IdentityType'
                }
              }
            }
          }
        }
      end
    end
  end
end