# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisiontraining::V2_0
  module Models
    #
    # Model object.
    #
    #
    class ImageCreateResult

      include MsRestAzure

      # @return [String]
      attr_accessor :source_url

      # @return [ImageUploadStatus] Possible values include: 'OK',
      # 'OKDuplicate', 'ErrorSource', 'ErrorImageFormat', 'ErrorImageSize',
      # 'ErrorStorage', 'ErrorLimitExceed', 'ErrorTagLimitExceed',
      # 'ErrorRegionLimitExceed', 'ErrorUnknown'
      attr_accessor :status

      # @return [Image]
      attr_accessor :image


      #
      # Mapper for ImageCreateResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageCreateResult',
          type: {
            name: 'Composite',
            class_name: 'ImageCreateResult',
            model_properties: {
              source_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceUrl',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'Image'
                }
              }
            }
          }
        }
      end
    end
  end
end
