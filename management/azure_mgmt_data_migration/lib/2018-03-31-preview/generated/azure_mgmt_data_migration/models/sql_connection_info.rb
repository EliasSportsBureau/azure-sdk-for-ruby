# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_31_preview
  module Models
    #
    # Information for connecting to SQL database server
    #
    class SqlConnectionInfo < ConnectionInfo

      include MsRestAzure


      def initialize
        @type = "SqlConnectionInfo"
      end

      attr_accessor :type

      # @return [String] Data source in the format
      # Protocol:MachineName\SQLServerInstanceName,PortNumber
      attr_accessor :data_source

      # @return [AuthenticationType] Authentication type to use for connection.
      # Possible values include: 'None', 'WindowsAuthentication',
      # 'SqlAuthentication', 'ActiveDirectoryIntegrated',
      # 'ActiveDirectoryPassword'
      attr_accessor :authentication

      # @return [Boolean] Whether to encrypt the connection. Default value:
      # true .
      attr_accessor :encrypt_connection

      # @return [String] Additional connection settings
      attr_accessor :additional_settings

      # @return [Boolean] Whether to trust the server certificate. Default
      # value: false .
      attr_accessor :trust_server_certificate


      #
      # Mapper for SqlConnectionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlConnectionInfo',
          type: {
            name: 'Composite',
            class_name: 'SqlConnectionInfo',
            model_properties: {
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              data_source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dataSource',
                type: {
                  name: 'String'
                }
              },
              authentication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authentication',
                type: {
                  name: 'String'
                }
              },
              encrypt_connection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptConnection',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              additional_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalSettings',
                type: {
                  name: 'String'
                }
              },
              trust_server_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trustServerCertificate',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end