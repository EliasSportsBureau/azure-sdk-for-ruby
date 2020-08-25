# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # This type describes a application resource.
    #
    class ApplicationResourceDescription

      include MsRestAzure

      # @return [String] Name of the Application resource.
      attr_accessor :name

      # @return [String] User readable description of the application.
      attr_accessor :description

      # @return [Array<ServiceResourceDescription>] Describes the services in
      # the application. This property is used to create or modify services of
      # the application. On get only the name of the service is returned. The
      # service description can be obtained by querying for the service
      # resource.
      attr_accessor :services

      # @return [DiagnosticsDescription] Describes the diagnostics definition
      # and usage for an application resource.
      attr_accessor :diagnostics

      # @return [String] Internal - used by Visual Studio to setup the
      # debugging session on the local development environment.
      attr_accessor :debug_params

      # @return [Array<String>] Names of the services in the application.
      attr_accessor :service_names

      # @return [ResourceStatus] Status of the application. Possible values
      # include: 'Unknown', 'Ready', 'Upgrading', 'Creating', 'Deleting',
      # 'Failed'
      attr_accessor :status

      # @return [String] Gives additional information about the current status
      # of the application.
      attr_accessor :status_details

      # @return [HealthState] Describes the health state of an application
      # resource. Possible values include: 'Invalid', 'Ok', 'Warning', 'Error',
      # 'Unknown'
      attr_accessor :health_state

      # @return [String] When the application's health state is not 'Ok', this
      # additional details from service fabric Health Manager for the user to
      # know why the application is marked unhealthy.
      attr_accessor :unhealthy_evaluation

      # @return [IdentityDescription] Describes the identity of the
      # application.
      attr_accessor :identity


      #
      # Mapper for ApplicationResourceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationResourceDescription',
          type: {
            name: 'Composite',
            class_name: 'ApplicationResourceDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
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
              services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.services',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceResourceDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceResourceDescription'
                      }
                  }
                }
              },
              diagnostics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsDescription'
                }
              },
              debug_params: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.debugParams',
                type: {
                  name: 'String'
                }
              },
              service_names: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceNames',
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
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              status_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.statusDetails',
                type: {
                  name: 'String'
                }
              },
              health_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.healthState',
                type: {
                  name: 'String'
                }
              },
              unhealthy_evaluation: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unhealthyEvaluation',
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
                  class_name: 'IdentityDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end