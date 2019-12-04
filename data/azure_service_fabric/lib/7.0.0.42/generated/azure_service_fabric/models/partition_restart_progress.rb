# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about a partition restart user-induced operation.
    #
    class PartitionRestartProgress

      include MsRestAzure

      # @return [OperationState] The state of the operation. Possible values
      # include: 'Invalid', 'Running', 'RollingBack', 'Completed', 'Faulted',
      # 'Cancelled', 'ForceCancelled'
      attr_accessor :state

      # @return [RestartPartitionResult] Represents information about an
      # operation in a terminal state (Completed or Faulted).
      attr_accessor :restart_partition_result


      #
      # Mapper for PartitionRestartProgress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionRestartProgress',
          type: {
            name: 'Composite',
            class_name: 'PartitionRestartProgress',
            model_properties: {
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'State',
                type: {
                  name: 'String'
                }
              },
              restart_partition_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RestartPartitionResult',
                type: {
                  name: 'Composite',
                  class_name: 'RestartPartitionResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
