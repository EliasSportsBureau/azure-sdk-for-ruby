# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about a service partition and its associated endpoints.
    #
    class ResolvedServicePartition

      include MsRestAzure

      # @return [String] The full name of the service with 'fabric:' URI
      # scheme.
      attr_accessor :name

      # @return [PartitionInformation] A representation of the resolved
      # partition.
      attr_accessor :partition_information

      # @return [Array<ResolvedServiceEndpoint>] List of resolved service
      # endpoints of a service partition.
      attr_accessor :endpoints

      # @return [String] The version of this resolved service partition result.
      # This version should be passed in the next time the ResolveService call
      # is made via the PreviousRspVersion query parameter.
      attr_accessor :version


      #
      # Mapper for ResolvedServicePartition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResolvedServicePartition',
          type: {
            name: 'Composite',
            class_name: 'ResolvedServicePartition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              partition_information: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PartitionInformation',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'ServicePartitionKind',
                  uber_parent: 'PartitionInformation',
                  class_name: 'PartitionInformation'
                }
              },
              endpoints: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResolvedServiceEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResolvedServiceEndpoint'
                      }
                  }
                }
              },
              version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Version',
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
