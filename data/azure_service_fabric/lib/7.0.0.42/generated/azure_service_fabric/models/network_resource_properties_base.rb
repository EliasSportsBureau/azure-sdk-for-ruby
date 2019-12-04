# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # This type describes the properties of a network resource, including its
    # kind.
    #
    class NetworkResourcePropertiesBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["NetworkResourceProperties"] = "NetworkResourceProperties"
      @@discriminatorMap["Local"] = "LocalNetworkResourceProperties"

      def initialize
        @kind = "NetworkResourcePropertiesBase"
      end

      attr_accessor :kind


      #
      # Mapper for NetworkResourcePropertiesBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkResourcePropertiesBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'kind',
            uber_parent: 'NetworkResourcePropertiesBase',
            class_name: 'NetworkResourcePropertiesBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
