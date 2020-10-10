# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DigitalTwins::Mgmt::V2020_10_31
  module Models
    #
    # The description of the DigitalTwins service.
    #
    class DigitalTwinsPatchDescription

      include MsRestAzure

      # @return [Hash{String => String}] Instance tags
      attr_accessor :tags


      #
      # Mapper for DigitalTwinsPatchDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DigitalTwinsPatchDescription',
          type: {
            name: 'Composite',
            class_name: 'DigitalTwinsPatchDescription',
            model_properties: {
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
              }
            }
          }
        }
      end
    end
  end
end