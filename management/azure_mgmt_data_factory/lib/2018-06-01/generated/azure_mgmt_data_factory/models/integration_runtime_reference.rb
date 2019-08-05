# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Integration runtime reference type.
    #
    class IntegrationRuntimeReference

      include MsRestAzure

      # @return [String] Type of integration runtime. Default value:
      # 'IntegrationRuntimeReference' .
      attr_accessor :type

      # @return [String] Reference integration runtime name.
      attr_accessor :reference_name

      # @return Arguments for integration runtime.
      attr_accessor :parameters


      #
      # Mapper for IntegrationRuntimeReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeReference',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeReference',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'IntegrationRuntimeReference',
                type: {
                  name: 'String'
                }
              },
              reference_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'referenceName',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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