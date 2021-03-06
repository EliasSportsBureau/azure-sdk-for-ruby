# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearning::Mgmt::V2017_01_01
  module Models
    #
    # The API operation info.
    #
    class OperationDisplayInfo

      include MsRestAzure

      # @return [String] The description of the operation.
      attr_accessor :description

      # @return [String] The action that users can perform, based on their
      # permission level.
      attr_accessor :operation

      # @return [String] The service provider.
      attr_accessor :provider

      # @return [String] The resource on which the operation is performed.
      attr_accessor :resource


      #
      # Mapper for OperationDisplayInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationDisplayInfo',
          type: {
            name: 'Composite',
            class_name: 'OperationDisplayInfo',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resource',
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
