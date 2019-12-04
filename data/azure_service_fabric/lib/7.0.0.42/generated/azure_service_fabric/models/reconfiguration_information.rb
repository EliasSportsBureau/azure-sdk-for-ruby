# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about current reconfiguration like phase, type, previous
    # configuration role of replica and reconfiguration start date time.
    #
    class ReconfigurationInformation

      include MsRestAzure

      # @return [ReplicaRole] Replica role before reconfiguration started.
      # Possible values include: 'Unknown', 'None', 'Primary', 'IdleSecondary',
      # 'ActiveSecondary'
      attr_accessor :previous_configuration_role

      # @return [ReconfigurationPhase] Current phase of ongoing
      # reconfiguration. If no reconfiguration is taking place then this value
      # will be "None". Possible values include: 'Unknown', 'None', 'Phase0',
      # 'Phase1', 'Phase2', 'Phase3', 'Phase4', 'AbortPhaseZero'
      attr_accessor :reconfiguration_phase

      # @return [ReconfigurationType] Type of current ongoing reconfiguration.
      # If no reconfiguration is taking place then this value will be "None".
      # Possible values include: 'Unknown', 'SwapPrimary', 'Failover', 'Other'
      attr_accessor :reconfiguration_type

      # @return [DateTime] Start time (in UTC) of the ongoing reconfiguration.
      # If no reconfiguration is taking place then this value will be zero
      # date-time.
      attr_accessor :reconfiguration_start_time_utc


      #
      # Mapper for ReconfigurationInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReconfigurationInformation',
          type: {
            name: 'Composite',
            class_name: 'ReconfigurationInformation',
            model_properties: {
              previous_configuration_role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PreviousConfigurationRole',
                type: {
                  name: 'String'
                }
              },
              reconfiguration_phase: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReconfigurationPhase',
                type: {
                  name: 'String'
                }
              },
              reconfiguration_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReconfigurationType',
                type: {
                  name: 'String'
                }
              },
              reconfiguration_start_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReconfigurationStartTimeUtc',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
