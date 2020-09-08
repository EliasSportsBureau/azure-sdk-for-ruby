# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # The certificate issuer item containing certificate issuer metadata.
    #
    class CertificateIssuerItem

      include MsRestAzure

      # @return [String] Certificate Identifier.
      attr_accessor :id

      # @return [String] The issuer provider.
      attr_accessor :provider


      #
      # Mapper for CertificateIssuerItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateIssuerItem',
          type: {
            name: 'Composite',
            class_name: 'CertificateIssuerItem',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
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
