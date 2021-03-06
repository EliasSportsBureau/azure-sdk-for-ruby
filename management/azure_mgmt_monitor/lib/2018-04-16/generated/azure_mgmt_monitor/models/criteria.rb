# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_04_16
  module Models
    #
    # Specifies the criteria for converting log to metric.
    #
    class Criteria

      include MsRestAzure

      # @return [String] Name of the metric
      attr_accessor :metric_name

      # @return [Array<Dimension>] List of Dimensions for creating metric
      attr_accessor :dimensions


      #
      # Mapper for Criteria class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Criteria',
          type: {
            name: 'Composite',
            class_name: 'Criteria',
            model_properties: {
              metric_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'metricName',
                type: {
                  name: 'String'
                }
              },
              dimensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Dimension'
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
