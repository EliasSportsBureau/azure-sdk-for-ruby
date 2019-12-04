# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes the entities targeted by a repair action.
    #
    # This type supports the Service Fabric platform; it is not meant to be
    # used directly from your code.
    #
    class RepairTargetDescriptionBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Node"] = "NodeRepairTargetDescription"

      def initialize
        @Kind = "RepairTargetDescriptionBase"
      end

      attr_accessor :Kind


      #
      # Mapper for RepairTargetDescriptionBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RepairTargetDescriptionBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'RepairTargetDescriptionBase',
            class_name: 'RepairTargetDescriptionBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
