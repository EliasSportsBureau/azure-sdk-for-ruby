# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Reference to sinks in DiagnosticsDescription.
    #
    class DiagnosticsRef

      include MsRestAzure

      # @return [Boolean] Status of whether or not sinks are enabled.
      attr_accessor :enabled

      # @return [Array<String>] List of sinks to be used if enabled. References
      # the list of sinks in DiagnosticsDescription.
      attr_accessor :sink_refs


      #
      # Mapper for DiagnosticsRef class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticsRef',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticsRef',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              sink_refs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRefs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
