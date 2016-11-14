# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # The base class for backup copies. Workload-specific backup copies are
    # derived from this class.
    #
    class RecoveryPoint

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["IaasVMRecoveryPoint"] = "IaasVMRecoveryPoint"
      @@discriminatorMap["GenericRecoveryPoint"] = "GenericRecoveryPoint"

      def initialize
        @objectType = "RecoveryPoint"
      end

      attr_accessor :objectType


      #
      # Mapper for RecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPoint',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'RecoveryPoint',
            class_name: 'RecoveryPoint',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
