# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # The list of deployed service package health state chunks that respect the
    # input filters in the chunk query. Returned by get cluster health state
    # chunks query.
    #
    class DeployedServicePackageHealthStateChunkList

      include MsRestAzure

      # @return [Array<DeployedServicePackageHealthStateChunk>] The list of
      # deployed service package health state chunks that respect the input
      # filters in the chunk query.
      attr_accessor :items


      #
      # Mapper for DeployedServicePackageHealthStateChunkList class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeployedServicePackageHealthStateChunkList',
          type: {
            name: 'Composite',
            class_name: 'DeployedServicePackageHealthStateChunkList',
            model_properties: {
              items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Items',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeployedServicePackageHealthStateChunkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeployedServicePackageHealthStateChunk'
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