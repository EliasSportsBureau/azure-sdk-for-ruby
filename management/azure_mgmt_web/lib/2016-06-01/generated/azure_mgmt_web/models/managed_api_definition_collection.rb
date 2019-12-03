# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_06_01
  module Models
    #
    # A list of managed API definitions
    #
    class ManagedApiDefinitionCollection

      include MsRestAzure

      # @return [Array<ManagedApiDefinition>] Collection of managed APIs
      attr_accessor :value


      #
      # Mapper for ManagedApiDefinitionCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedApiDefinitionCollection',
          type: {
            name: 'Composite',
            class_name: 'ManagedApiDefinitionCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedApiDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedApiDefinition'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end