# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Policy::Mgmt::V2019_09_01
  module Models
    #
    # The policy assignment.
    #
    class PolicyAssignment

      include MsRestAzure

      # @return [String] The display name of the policy assignment.
      attr_accessor :display_name

      # @return [String] The ID of the policy definition or policy set
      # definition being assigned.
      attr_accessor :policy_definition_id

      # @return [String] The scope for the policy assignment.
      attr_accessor :scope

      # @return [Array<String>] The policy's excluded scopes.
      attr_accessor :not_scopes

      # @return [Hash{String => ParameterValuesValue}] The parameter values for
      # the assigned policy rule. The keys are the parameter names.
      attr_accessor :parameters

      # @return [String] This message will be part of response in case of
      # policy violation.
      attr_accessor :description

      # @return The policy assignment metadata. Metadata is an open ended
      # object and is typically a collection of key value pairs.
      attr_accessor :metadata

      # @return [EnforcementMode] The policy assignment enforcement mode.
      # Possible values are Default and DoNotEnforce. Possible values include:
      # 'Default', 'DoNotEnforce'
      attr_accessor :enforcement_mode

      # @return [String] The ID of the policy assignment.
      attr_accessor :id

      # @return [String] The type of the policy assignment.
      attr_accessor :type

      # @return [String] The name of the policy assignment.
      attr_accessor :name

      # @return [PolicySku] The policy sku. This property is optional,
      # obsolete, and will be ignored.
      attr_accessor :sku

      # @return [String] The location of the policy assignment. Only required
      # when utilizing managed identity.
      attr_accessor :location

      # @return [Identity] The managed identity associated with the policy
      # assignment.
      attr_accessor :identity


      #
      # Mapper for PolicyAssignment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyAssignment',
          type: {
            name: 'Composite',
            class_name: 'PolicyAssignment',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              policy_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.policyDefinitionId',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scope',
                type: {
                  name: 'String'
                }
              },
              not_scopes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.notScopes',
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
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterValuesValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterValuesValue'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Object'
                }
              },
              enforcement_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enforcementMode',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'PolicySku'
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              }
            }
          }
        }
      end
    end
  end
end
