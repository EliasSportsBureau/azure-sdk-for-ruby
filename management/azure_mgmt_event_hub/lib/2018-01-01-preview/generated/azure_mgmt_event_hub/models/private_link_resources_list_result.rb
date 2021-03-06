# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  module Models
    #
    # Result of the List private link resources operation.
    #
    class PrivateLinkResourcesListResult

      include MsRestAzure

      # @return [Array<PrivateLinkResource>] A collection of private link
      # resources
      attr_accessor :value

      # @return [String] A link for the next page of private link resources.
      attr_accessor :next_link


      #
      # Mapper for PrivateLinkResourcesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkResourcesListResult',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkResourcesListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateLinkResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateLinkResource'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
