# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines a characteristic of the content found in the image.
    #
    class InsightsTag

      include MsRestAzure

      # @return [String] The name of the characteristic. For example, cat,
      # kitty, calico cat.
      attr_accessor :name


      #
      # Mapper for InsightsTag class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InsightsTag',
          type: {
            name: 'Composite',
            class_name: 'InsightsTag',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
