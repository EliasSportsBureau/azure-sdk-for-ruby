# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # The container state.
    #
    class ContainerState

      include MsRestAzure

      # @return [String] The state of this container
      attr_accessor :state

      # @return [DateTime] Date/time when the container state started.
      attr_accessor :start_time

      # @return [String] The container exit code.
      attr_accessor :exit_code

      # @return [DateTime] Date/time when the container state finished.
      attr_accessor :finish_time

      # @return [String] Human-readable status of this state.
      attr_accessor :detail_status


      #
      # Mapper for ContainerState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerState',
          type: {
            name: 'Composite',
            class_name: 'ContainerState',
            model_properties: {
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              exit_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exitCode',
                type: {
                  name: 'String'
                }
              },
              finish_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'finishTime',
                type: {
                  name: 'DateTime'
                }
              },
              detail_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'detailStatus',
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
