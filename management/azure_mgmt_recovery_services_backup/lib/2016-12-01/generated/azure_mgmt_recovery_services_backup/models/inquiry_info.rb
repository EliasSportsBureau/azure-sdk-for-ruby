# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Details about inquired protectable items under a given container.
    #
    class InquiryInfo

      include MsRestAzure

      # @return [String] Inquiry Status for this container such as
      # InProgress | Failed | Succeeded
      attr_accessor :status

      # @return [ErrorDetail] Error Details if the Status is non-success.
      attr_accessor :error_detail

      # @return [Array<WorkloadInquiryDetails>] Inquiry Details which will have
      # workload specific details.
      # For e.g. - For SQL and oracle this will contain different details.
      attr_accessor :inquiry_details


      #
      # Mapper for InquiryInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InquiryInfo',
          type: {
            name: 'Composite',
            class_name: 'InquiryInfo',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              error_detail: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorDetail',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorDetail'
                }
              },
              inquiry_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inquiryDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WorkloadInquiryDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkloadInquiryDetails'
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