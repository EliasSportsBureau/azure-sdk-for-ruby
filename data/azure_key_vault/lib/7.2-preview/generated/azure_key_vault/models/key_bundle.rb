# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # A KeyBundle consisting of a WebKey plus its attributes.
    #
    class KeyBundle

      include MsRestAzure

      # @return [JsonWebKey] The Json web key.
      attr_accessor :key

      # @return [KeyAttributes] The key management attributes.
      attr_accessor :attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags

      # @return [Boolean] True if the key's lifetime is managed by key vault.
      # If this is a key backing a certificate, then managed will be true.
      attr_accessor :managed

      # @return [KeyReleasePolicy] The policy rules under which the key can be
      # exported.
      attr_accessor :release_policy


      #
      # Mapper for KeyBundle class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyBundle',
          type: {
            name: 'Composite',
            class_name: 'KeyBundle',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'Composite',
                  class_name: 'JsonWebKey'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'KeyAttributes'
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
              managed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'managed',
                type: {
                  name: 'Boolean'
                }
              },
              release_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'release_policy',
                type: {
                  name: 'Composite',
                  class_name: 'KeyReleasePolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
