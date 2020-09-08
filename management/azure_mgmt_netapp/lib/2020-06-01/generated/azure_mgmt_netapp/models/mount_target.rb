# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_06_01
  module Models
    #
    # Mount Target
    #
    class MountTarget

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [String] mountTargetId. UUID v4 used to identify the
      # MountTarget
      attr_accessor :mount_target_id

      # @return [String] fileSystemId. UUID v4 used to identify the MountTarget
      attr_accessor :file_system_id

      # @return [String] ipAddress. The mount target's IPv4 address
      attr_accessor :ip_address

      # @return [String] smbServerFQDN. The SMB server's Fully Qualified Domain
      # Name, FQDN
      attr_accessor :smb_server_fqdn


      #
      # Mapper for MountTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'mountTarget',
          type: {
            name: 'Composite',
            class_name: 'MountTarget',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              mount_target_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.mountTargetId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              file_system_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.fileSystemId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ipAddress',
                type: {
                  name: 'String'
                }
              },
              smb_server_fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.smbServerFqdn',
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
