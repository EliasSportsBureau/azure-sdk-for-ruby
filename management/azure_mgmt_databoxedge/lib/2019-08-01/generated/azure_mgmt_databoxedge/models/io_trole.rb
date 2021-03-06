# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # Compute role.
    #
    class IoTRole < Role

      include MsRestAzure


      def initialize
        @kind = "IOT"
      end

      attr_accessor :kind

      # @return [PlatformType] Host OS supported by the IoT role. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :host_platform

      # @return [IoTDeviceInfo] IoT device metadata to which data box edge
      # device needs to be connected.
      attr_accessor :io_tdevice_details

      # @return [IoTDeviceInfo] IoT edge device to which the IoT role needs to
      # be configured.
      attr_accessor :io_tedge_device_details

      # @return [Array<MountPointMap>] Mount points of shares in role(s).
      attr_accessor :share_mappings

      # @return [RoleStatus] Role status. Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :role_status


      #
      # Mapper for IoTRole class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IOT',
          type: {
            name: 'Composite',
            class_name: 'IoTRole',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              host_platform: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.hostPlatform',
                type: {
                  name: 'String'
                }
              },
              io_tdevice_details: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.ioTDeviceDetails',
                type: {
                  name: 'Composite',
                  class_name: 'IoTDeviceInfo'
                }
              },
              io_tedge_device_details: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.ioTEdgeDeviceDetails',
                type: {
                  name: 'Composite',
                  class_name: 'IoTDeviceInfo'
                }
              },
              share_mappings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.shareMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MountPointMapElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MountPointMap'
                      }
                  }
                }
              },
              role_status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.roleStatus',
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
