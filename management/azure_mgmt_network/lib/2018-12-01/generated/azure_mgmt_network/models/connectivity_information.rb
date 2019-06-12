# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Information on the connectivity status.
    #
    class ConnectivityInformation

      include MsRestAzure

      # @return [Array<ConnectivityHop>] List of hops between the source and
      # the destination.
      attr_accessor :hops

      # @return [ConnectionStatus] The connection status. Possible values
      # include: 'Unknown', 'Connected', 'Disconnected', 'Degraded'
      attr_accessor :connection_status

      # @return [Integer] Average latency in milliseconds.
      attr_accessor :avg_latency_in_ms

      # @return [Integer] Minimum latency in milliseconds.
      attr_accessor :min_latency_in_ms

      # @return [Integer] Maximum latency in milliseconds.
      attr_accessor :max_latency_in_ms

      # @return [Integer] Total number of probes sent.
      attr_accessor :probes_sent

      # @return [Integer] Number of failed probes.
      attr_accessor :probes_failed


      #
      # Mapper for ConnectivityInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectivityInformation',
          type: {
            name: 'Composite',
            class_name: 'ConnectivityInformation',
            model_properties: {
              hops: {
                required: false,
                read_only: true,
                serialized_name: 'hops',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ConnectivityHopElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectivityHop'
                      }
                  }
                }
              },
              connection_status: {
                required: false,
                read_only: true,
                serialized_name: 'connectionStatus',
                type: {
                  name: 'String'
                }
              },
              avg_latency_in_ms: {
                required: false,
                read_only: true,
                serialized_name: 'avgLatencyInMs',
                type: {
                  name: 'Number'
                }
              },
              min_latency_in_ms: {
                required: false,
                read_only: true,
                serialized_name: 'minLatencyInMs',
                type: {
                  name: 'Number'
                }
              },
              max_latency_in_ms: {
                required: false,
                read_only: true,
                serialized_name: 'maxLatencyInMs',
                type: {
                  name: 'Number'
                }
              },
              probes_sent: {
                required: false,
                read_only: true,
                serialized_name: 'probesSent',
                type: {
                  name: 'Number'
                }
              },
              probes_failed: {
                required: false,
                read_only: true,
                serialized_name: 'probesFailed',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end