# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_1_preview
  module Models
    #
    # A certificate bundle consists of a certificate (X509) plus its
    # attributes.
    #
    class CertificateBundle

      include MsRestAzure

      # @return [String] The certificate id.
      attr_accessor :id

      # @return [String] The key id.
      attr_accessor :kid

      # @return [String] The secret id.
      attr_accessor :sid

      # @return Thumbprint of the certificate.
      attr_accessor :x509thumbprint

      # @return [CertificatePolicy] The management policy.
      attr_accessor :policy

      # @return [Array<Integer>] CER contents of x509 certificate.
      attr_accessor :cer

      # @return [String] The content type of the secret.
      attr_accessor :content_type

      # @return [CertificateAttributes] The certificate attributes.
      attr_accessor :attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs
      attr_accessor :tags


      #
      # Mapper for CertificateBundle class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateBundle',
          type: {
            name: 'Composite',
            class_name: 'CertificateBundle',
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
              kid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kid',
                type: {
                  name: 'String'
                }
              },
              sid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sid',
                type: {
                  name: 'String'
                }
              },
              x509thumbprint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'x5t',
                type: {
                  name: 'Base64Url'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'CertificatePolicy'
                }
              },
              cer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cer',
                type: {
                  name: 'ByteArray'
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
                  class_name: 'CertificateAttributes'
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
              }
            }
          }
        }
      end
    end
  end
end
