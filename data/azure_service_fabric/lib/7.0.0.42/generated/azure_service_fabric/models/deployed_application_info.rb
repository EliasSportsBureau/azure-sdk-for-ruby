# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about application deployed on the node.
    #
    class DeployedApplicationInfo

      include MsRestAzure

      # @return [String] The identity of the application. This is an encoded
      # representation of the application name. This is used in the REST APIs
      # to identify the application resource.
      # Starting in version 6.0, hierarchical names are delimited with the "\~"
      # character. For example, if the application name is
      # "fabric:/myapp/app1",
      # the application identity would be "myapp\~app1" in 6.0+ and
      # "myapp/app1" in previous versions.
      attr_accessor :id

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :name

      # @return [String] The application type name as defined in the
      # application manifest.
      attr_accessor :type_name

      # @return [DeployedApplicationStatus] The status of the application
      # deployed on the node. Following are the possible values. Possible
      # values include: 'Invalid', 'Downloading', 'Activating', 'Active',
      # 'Upgrading', 'Deactivating'
      attr_accessor :status

      # @return [String] The work directory of the application on the node. The
      # work directory can be used to store application data.
      attr_accessor :work_directory

      # @return [String] The log directory of the application on the node. The
      # log directory can be used to store application logs.
      attr_accessor :log_directory

      # @return [String] The temp directory of the application on the node. The
      # code packages belonging to the application are forked with this
      # directory set as their temporary directory.
      attr_accessor :temp_directory

      # @return [HealthState] The health state of a Service Fabric entity such
      # as Cluster, Node, Application, Service, Partition, Replica etc.
      # Possible values include: 'Invalid', 'Ok', 'Warning', 'Error', 'Unknown'
      attr_accessor :health_state


      #
      # Mapper for DeployedApplicationInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeployedApplicationInfo',
          type: {
            name: 'Composite',
            class_name: 'DeployedApplicationInfo',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TypeName',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Status',
                type: {
                  name: 'String'
                }
              },
              work_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'WorkDirectory',
                type: {
                  name: 'String'
                }
              },
              log_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LogDirectory',
                type: {
                  name: 'String'
                }
              },
              temp_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TempDirectory',
                type: {
                  name: 'String'
                }
              },
              health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthState',
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
