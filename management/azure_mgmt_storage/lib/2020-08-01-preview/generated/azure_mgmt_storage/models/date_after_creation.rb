# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2020_08_01_preview
  module Models
    #
    # Object to define the number of days after creation.
    #
    class DateAfterCreation

      include MsRestAzure

      # @return [Float] Value indicating the age in days after creation
      attr_accessor :days_after_creation_greater_than


      #
      # Mapper for DateAfterCreation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DateAfterCreation',
          type: {
            name: 'Composite',
            class_name: 'DateAfterCreation',
            model_properties: {
              days_after_creation_greater_than: {
                client_side_validation: true,
                required: true,
                serialized_name: 'daysAfterCreationGreaterThan',
                constraints: {
                  InclusiveMinimum: 0,
                  MultipleOf: 1
                },
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end