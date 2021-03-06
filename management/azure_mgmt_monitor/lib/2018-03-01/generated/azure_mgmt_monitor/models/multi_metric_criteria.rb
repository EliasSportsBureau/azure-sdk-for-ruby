# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # The types of conditions for a multi resource alert.
    #
    class MultiMetricCriteria

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["StaticThresholdCriterion"] = "MetricCriteria"
      @@discriminatorMap["DynamicThresholdCriterion"] = "DynamicMetricCriteria"

      def initialize
        @criterionType = "MultiMetricCriteria"
      end

      attr_accessor :criterionType

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] Name of the criteria.
      attr_accessor :name

      # @return [String] Name of the metric.
      attr_accessor :metric_name

      # @return [String] Namespace of the metric.
      attr_accessor :metric_namespace

      # @return the criteria time aggregation types.
      attr_accessor :time_aggregation

      # @return [Array<MetricDimension>] List of dimension conditions.
      attr_accessor :dimensions

      # @return [Boolean] Allows creating an alert rule on a custom metric that
      # isn't yet emitted, by causing the metric validation to be skipped.
      attr_accessor :skip_metric_validation


      #
      # Mapper for MultiMetricCriteria class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MultiMetricCriteria',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'criterionType',
            uber_parent: 'MultiMetricCriteria',
            class_name: 'MultiMetricCriteria',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              metric_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'metricName',
                type: {
                  name: 'String'
                }
              },
              metric_namespace: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricNamespace',
                type: {
                  name: 'String'
                }
              },
              time_aggregation: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeAggregation',
                type: {
                  name: 'Object'
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
                      serialized_name: 'MetricDimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricDimension'
                      }
                  }
                }
              },
              skip_metric_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skipMetricValidation',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
