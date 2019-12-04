# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Container API result.
    #
    class ContainerApiResult

      include MsRestAzure

      # @return [Integer] HTTP status code returned by the target container API
      attr_accessor :status

      # @return [String] HTTP content type
      attr_accessor :content_type

      # @return [String] HTTP content encoding
      attr_accessor :content_encoding

      # @return [String] container API result body
      attr_accessor :body


      #
      # Mapper for ContainerApiResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerApiResult',
          type: {
            name: 'Composite',
            class_name: 'ContainerApiResult',
            model_properties: {
              status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Status',
                type: {
                  name: 'Number'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Content-Type',
                type: {
                  name: 'String'
                }
              },
              content_encoding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Content-Encoding',
                type: {
                  name: 'String'
                }
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Body',
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
