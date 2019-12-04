# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Represents a PropertyBatchOperation that compares the value of the
    # property with the expected value.
    # The CheckValuePropertyBatchOperation is generally used as a precondition
    # for the write operations in the batch.
    # Note that if one PropertyBatchOperation in a PropertyBatch fails,
    # the entire batch fails and cannot be committed in a transactional manner.
    #
    class CheckValuePropertyBatchOperation < PropertyBatchOperation

      include MsRestAzure


      def initialize
        @Kind = "CheckValue"
      end

      attr_accessor :Kind

      # @return [PropertyValue] The expected property value.
      attr_accessor :value


      #
      # Mapper for CheckValuePropertyBatchOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckValue',
          type: {
            name: 'Composite',
            class_name: 'CheckValuePropertyBatchOperation',
            model_properties: {
              property_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PropertyName',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Value',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'Kind',
                  uber_parent: 'PropertyValue',
                  class_name: 'PropertyValue'
                }
              }
            }
          }
        }
      end
    end
  end
end
