# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # A secret consisting of a value, id and its attributes.
    #
    class SecretBundle

      include MsRestAzure

      # @return [String] The secret value.
      attr_accessor :value

      # @return [String] The secret id.
      attr_accessor :id

      # @return [String] The content type of the secret.
      attr_accessor :content_type

      # @return [SecretAttributes] The secret management attributes.
      attr_accessor :attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags

      # @return [String] If this is a secret backing a KV certificate, then
      # this field specifies the corresponding key backing the KV certificate.
      attr_accessor :kid

      # @return [Boolean] True if the secret's lifetime is managed by key
      # vault. If this is a secret backing a certificate, then managed will be
      # true.
      attr_accessor :managed


      #
      # Mapper for SecretBundle class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecretBundle',
          type: {
            name: 'Composite',
            class_name: 'SecretBundle',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'SecretAttributes'
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
              kid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kid',
                type: {
                  name: 'String'
                }
              },
              managed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'managed',
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
