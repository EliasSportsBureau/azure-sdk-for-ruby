# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DigitalTwins::Mgmt::V2020_10_31
  module Models
    #
    # Properties related to ServiceBus.
    #
    class ServiceBus < DigitalTwinsEndpointResourceProperties

      include MsRestAzure


      def initialize
        @endpointType = "ServiceBus"
      end

      attr_accessor :endpointType

      # @return [String] PrimaryConnectionString of the endpoint. Will be
      # obfuscated during read.
      attr_accessor :primary_connection_string

      # @return [String] SecondaryConnectionString of the endpoint. Will be
      # obfuscated during read.
      attr_accessor :secondary_connection_string


      #
      # Mapper for ServiceBus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceBus',
          type: {
            name: 'Composite',
            class_name: 'ServiceBus',
            model_properties: {
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              created_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              dead_letter_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deadLetterSecret',
                type: {
                  name: 'String'
                }
              },
              endpointType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              primary_connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              secondary_connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryConnectionString',
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
