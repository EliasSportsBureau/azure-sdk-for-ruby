# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # The key verify parameters.
    #
    class KeyVerifyParameters

      include MsRestAzure

      # @return [JsonWebKeySignatureAlgorithm] The signing/verification
      # algorithm. For more information on possible algorithm types, see
      # JsonWebKeySignatureAlgorithm. Possible values include: 'PS256',
      # 'PS384', 'PS512', 'RS256', 'RS384', 'RS512', 'RSNULL', 'ES256',
      # 'ES384', 'ES512', 'ES256K'
      attr_accessor :algorithm

      # @return The digest used for signing.
      attr_accessor :digest

      # @return The signature to be verified.
      attr_accessor :signature


      #
      # Mapper for KeyVerifyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVerifyParameters',
          type: {
            name: 'Composite',
            class_name: 'KeyVerifyParameters',
            model_properties: {
              algorithm: {
                client_side_validation: true,
                required: true,
                serialized_name: 'alg',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              digest: {
                client_side_validation: true,
                required: true,
                serialized_name: 'digest',
                type: {
                  name: 'Base64Url'
                }
              },
              signature: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Base64Url'
                }
              }
            }
          }
        }
      end
    end
  end
end
