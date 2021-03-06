# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Advisor::Mgmt::V2016_07_12_preview
  module Models
    #
    # The details of the snoozed or dismissed rule; for example, the duration,
    # name, and GUID associated with the rule.
    #
    class SuppressionContract < Resource

      include MsRestAzure

      # @return [String] The GUID of the suppression.
      attr_accessor :suppression_id

      # @return [String] The duration for which the suppression is valid.
      attr_accessor :ttl


      #
      # Mapper for SuppressionContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SuppressionContract',
          type: {
            name: 'Composite',
            class_name: 'SuppressionContract',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              suppression_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'suppressionId',
                type: {
                  name: 'String'
                }
              },
              ttl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ttl',
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
