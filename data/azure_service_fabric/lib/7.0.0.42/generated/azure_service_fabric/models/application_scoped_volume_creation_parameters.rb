# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes parameters for creating application-scoped volumes.
    #
    class ApplicationScopedVolumeCreationParameters

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ServiceFabricVolumeDisk"] = "ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk"

      def initialize
        @kind = "ApplicationScopedVolumeCreationParameters"
      end

      attr_accessor :kind

      # @return [String] User readable description of the volume.
      attr_accessor :description


      #
      # Mapper for ApplicationScopedVolumeCreationParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationScopedVolumeCreationParameters',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'kind',
            uber_parent: 'ApplicationScopedVolumeCreationParameters',
            class_name: 'ApplicationScopedVolumeCreationParameters',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
