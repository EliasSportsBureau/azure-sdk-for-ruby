# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Status of the secondary replicator when it is in idle mode and is being
    # built by the primary.
    #
    class SecondaryIdleReplicatorStatus < SecondaryReplicatorStatus

      include MsRestAzure


      def initialize
        @Kind = "IdleSecondary"
      end

      attr_accessor :Kind


      #
      # Mapper for SecondaryIdleReplicatorStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdleSecondary',
          type: {
            name: 'Composite',
            class_name: 'SecondaryIdleReplicatorStatus',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              replication_queue_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicationQueueStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicatorQueueStatus'
                }
              },
              last_replication_operation_received_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastReplicationOperationReceivedTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              is_in_build: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsInBuild',
                type: {
                  name: 'Boolean'
                }
              },
              copy_queue_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CopyQueueStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicatorQueueStatus'
                }
              },
              last_copy_operation_received_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastCopyOperationReceivedTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              last_acknowledgement_sent_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastAcknowledgementSentTimeUtc',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
