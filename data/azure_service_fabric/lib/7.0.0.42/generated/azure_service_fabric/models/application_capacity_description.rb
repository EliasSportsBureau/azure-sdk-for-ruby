# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes capacity information for services of this application. This
    # description can be used for describing the following.
    # - Reserving the capacity for the services on the nodes
    # - Limiting the total number of nodes that services of this application
    # can run on
    # - Limiting the custom capacity metrics to limit the total consumption of
    # this metric by the services of this application
    #
    class ApplicationCapacityDescription

      include MsRestAzure

      # @return [Integer] The minimum number of nodes where Service Fabric will
      # reserve capacity for this application. Note that this does not mean
      # that the services of this application will be placed on all of those
      # nodes. If this property is set to zero, no capacity will be reserved.
      # The value of this property cannot be more than the value of the
      # MaximumNodes property.
      attr_accessor :minimum_nodes

      # @return [Integer] The maximum number of nodes where Service Fabric will
      # reserve capacity for this application. Note that this does not mean
      # that the services of this application will be placed on all of those
      # nodes. By default, the value of this property is zero and it means that
      # the services can be placed on any node. Default value: 0 .
      attr_accessor :maximum_nodes

      # @return [Array<ApplicationMetricDescription>] List of application
      # capacity metric description.
      attr_accessor :application_metrics


      #
      # Mapper for ApplicationCapacityDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationCapacityDescription',
          type: {
            name: 'Composite',
            class_name: 'ApplicationCapacityDescription',
            model_properties: {
              minimum_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MinimumNodes',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              maximum_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MaximumNodes',
                default_value: 0,
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              application_metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationMetrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationMetricDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationMetricDescription'
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
