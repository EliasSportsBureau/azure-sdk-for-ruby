# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Security domain
    #
    class SecurityDomainObject

      include MsRestAzure

      # @return [SecurityDomainObjectData]
      attr_accessor :data


      #
      # Mapper for SecurityDomainObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityDomainObject',
          type: {
            name: 'Composite',
            class_name: 'SecurityDomainObject',
            model_properties: {
              data: {
                client_side_validation: true,
                required: true,
                serialized_name: 'data',
                type: {
                  name: 'Composite',
                  class_name: 'SecurityDomainObjectData'
                }
              }
            }
          }
        }
      end
    end
  end
end
