# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Key object containing the encryption key used to encrypt EncData object
    #
    class SecurityDomainUploadObjectValueWrappedKey

      include MsRestAzure

      # @return [String] Encryption key used to encrypt the EncData
      attr_accessor :enc_key

      # @return [String] Thumbprint used to determine which certificate was
      # used to encrypt the enc_key field
      attr_accessor :x5t_256


      #
      # Mapper for SecurityDomainUploadObjectValueWrappedKey class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityDomainUploadObject_value_WrappedKey',
          type: {
            name: 'Composite',
            class_name: 'SecurityDomainUploadObjectValueWrappedKey',
            model_properties: {
              enc_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enc_key',
                type: {
                  name: 'String'
                }
              },
              x5t_256: {
                client_side_validation: true,
                required: false,
                serialized_name: 'x5t_256',
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
