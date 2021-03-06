# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # Action and its trigger that will be performed by Key Vault over the
    # lifetime of a certificate.
    #
    class LifetimeAction

      include MsRestAzure

      # @return [Trigger] The condition that will execute the action.
      attr_accessor :trigger

      # @return [Action] The action that will be executed.
      attr_accessor :action


      #
      # Mapper for LifetimeAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LifetimeAction',
          type: {
            name: 'Composite',
            class_name: 'LifetimeAction',
            model_properties: {
              trigger: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trigger',
                type: {
                  name: 'Composite',
                  class_name: 'Trigger'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'Composite',
                  class_name: 'Action'
                }
              }
            }
          }
        }
      end
    end
  end
end
