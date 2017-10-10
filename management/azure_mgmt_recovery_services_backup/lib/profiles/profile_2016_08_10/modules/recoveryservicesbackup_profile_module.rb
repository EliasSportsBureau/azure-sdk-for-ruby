# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_backup'

module Azure::RecoveryServicesBackup::Management::Profile_2016_08_10
    Operations = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Operations

    module Models
      ClientDiscoveryForProperties = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForProperties
      ClientDiscoveryDisplay = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryDisplay
      ClientDiscoveryValueForSingleApi = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryValueForSingleApi
      ClientDiscoveryForServiceSpecification = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForServiceSpecification
      ClientDiscoveryResponse = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryResponse
      ClientDiscoveryForLogSpecification = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForLogSpecification
    end

    #
    # RecoveryServicesBackup
    #
    class RecoveryServicesBackupClass
      attr_reader :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @operations = client.operations
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::RecoveryServicesBackupClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def client_discovery_for_properties
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForProperties
        end
        def client_discovery_display
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryDisplay
        end
        def client_discovery_value_for_single_api
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryValueForSingleApi
        end
        def client_discovery_for_service_specification
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForServiceSpecification
        end
        def client_discovery_response
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryResponse
        end
        def client_discovery_for_log_specification
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForLogSpecification
        end
      end
    end
end