# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Additional information on Azure Workload for SQL specific backup item.
    #
    class AzureVmWorkloadProtectedItemExtendedInfo

      include MsRestAzure

      # @return [DateTime] The oldest backup copy available for this backup
      # item.
      attr_accessor :oldest_recovery_point

      # @return [Integer] Number of backup copies available for this backup
      # item.
      attr_accessor :recovery_point_count

      # @return [String] Indicates consistency of policy object and policy
      # applied to this backup item.
      attr_accessor :policy_state


      #
      # Mapper for AzureVmWorkloadProtectedItemExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureVmWorkloadProtectedItemExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureVmWorkloadProtectedItemExtendedInfo',
            model_properties: {
              oldest_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'oldestRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointCount',
                type: {
                  name: 'Number'
                }
              },
              policy_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyState',
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