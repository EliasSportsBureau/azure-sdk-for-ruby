# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::HybridCompute::Mgmt::V2020_08_02
  module Models
    #
    # Instance view status.
    #
    class MachineExtensionInstanceViewStatus

      include MsRestAzure

      # @return [String] The status code.
      attr_accessor :code

      # @return [StatusLevelTypes] The level code. Possible values include:
      # 'Info', 'Warning', 'Error'
      attr_accessor :level

      # @return [String] The short localizable label for the status.
      attr_accessor :display_status

      # @return [String] The detailed status message, including for alerts and
      # error messages.
      attr_accessor :message

      # @return [DateTime] The time of the status.
      attr_accessor :time


      #
      # Mapper for MachineExtensionInstanceViewStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MachineExtensionInstanceView_status',
          type: {
            name: 'Composite',
            class_name: 'MachineExtensionInstanceViewStatus',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              level: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'level',
                type: {
                  name: 'String'
                }
              },
              display_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayStatus',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'time',
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
