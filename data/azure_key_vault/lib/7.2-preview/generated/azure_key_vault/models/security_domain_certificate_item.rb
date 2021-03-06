# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Model object.
    #
    #
    class SecurityDomainCertificateItem

      include MsRestAzure

      # @return [SecurityDomainJsonWebKey] Customer generated certificate
      # containing public key in JWK format
      attr_accessor :value


      #
      # Mapper for SecurityDomainCertificateItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityDomainCertificateItem',
          type: {
            name: 'Composite',
            class_name: 'SecurityDomainCertificateItem',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Composite',
                  class_name: 'SecurityDomainJsonWebKey'
                }
              }
            }
          }
        }
      end
    end
  end
end
