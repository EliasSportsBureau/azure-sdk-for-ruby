# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2020_01_01
  module Models
    #
    # A MySQL Server key.
    #
    class ServerKey < ProxyResource

      include MsRestAzure

      # @return [String] Kind of encryption protector used to protect the key.
      attr_accessor :kind

      # @return [String] The key type like 'AzureKeyVault'. Default value:
      # 'AzureKeyVault' .
      attr_accessor :server_key_type

      # @return [String] The URI of the key.
      attr_accessor :uri

      # @return [DateTime] The key creation date.
      attr_accessor :creation_date


      #
      # Mapper for ServerKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerKey',
          type: {
            name: 'Composite',
            class_name: 'ServerKey',
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
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              server_key_type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'properties.serverKeyType',
                default_value: 'AzureKeyVault',
                type: {
                  name: 'String'
                }
              },
              uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.uri',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
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
