# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cdn'

module Azure::CDN::Management::Profile_2016_10_02
    Profiles = Azure::ARM::CDN::Api_2016_10_02::Profiles
    Endpoints = Azure::ARM::CDN::Api_2016_10_02::Endpoints
    Origins = Azure::ARM::CDN::Api_2016_10_02::Origins
    CustomDomains = Azure::ARM::CDN::Api_2016_10_02::CustomDomains
    EdgeNodes = Azure::ARM::CDN::Api_2016_10_02::EdgeNodes

    module Models
      CustomDomainParameters = Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomainParameters
      Sku = Azure::ARM::CDN::Api_2016_10_02::Models::Sku
      CustomDomainListResult = Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomainListResult
      ProfileListResult = Azure::ARM::CDN::Api_2016_10_02::Models::ProfileListResult
      ValidateCustomDomainInput = Azure::ARM::CDN::Api_2016_10_02::Models::ValidateCustomDomainInput
      SsoUri = Azure::ARM::CDN::Api_2016_10_02::Models::SsoUri
      ValidateCustomDomainOutput = Azure::ARM::CDN::Api_2016_10_02::Models::ValidateCustomDomainOutput
      DeepCreatedOrigin = Azure::ARM::CDN::Api_2016_10_02::Models::DeepCreatedOrigin
      CheckNameAvailabilityInput = Azure::ARM::CDN::Api_2016_10_02::Models::CheckNameAvailabilityInput
      EndpointListResult = Azure::ARM::CDN::Api_2016_10_02::Models::EndpointListResult
      CheckNameAvailabilityOutput = Azure::ARM::CDN::Api_2016_10_02::Models::CheckNameAvailabilityOutput
      EndpointUpdateParameters = Azure::ARM::CDN::Api_2016_10_02::Models::EndpointUpdateParameters
      ResourceUsage = Azure::ARM::CDN::Api_2016_10_02::Models::ResourceUsage
      LoadParameters = Azure::ARM::CDN::Api_2016_10_02::Models::LoadParameters
      ResourceUsageListResult = Azure::ARM::CDN::Api_2016_10_02::Models::ResourceUsageListResult
      OriginUpdateParameters = Azure::ARM::CDN::Api_2016_10_02::Models::OriginUpdateParameters
      OperationDisplay = Azure::ARM::CDN::Api_2016_10_02::Models::OperationDisplay
      OriginListResult = Azure::ARM::CDN::Api_2016_10_02::Models::OriginListResult
      ProfileUpdateParameters = Azure::ARM::CDN::Api_2016_10_02::Models::ProfileUpdateParameters
      Operation = Azure::ARM::CDN::Api_2016_10_02::Models::Operation
      SupportedOptimizationTypesResult = Azure::ARM::CDN::Api_2016_10_02::Models::SupportedOptimizationTypesResult
      EdgenodeResult = Azure::ARM::CDN::Api_2016_10_02::Models::EdgenodeResult
      PurgeParameters = Azure::ARM::CDN::Api_2016_10_02::Models::PurgeParameters
      OperationListResult = Azure::ARM::CDN::Api_2016_10_02::Models::OperationListResult
      ErrorResponse = Azure::ARM::CDN::Api_2016_10_02::Models::ErrorResponse
      GeoFilter = Azure::ARM::CDN::Api_2016_10_02::Models::GeoFilter
      CidrIpAddress = Azure::ARM::CDN::Api_2016_10_02::Models::CidrIpAddress
      IpAddressGroup = Azure::ARM::CDN::Api_2016_10_02::Models::IpAddressGroup
      Profile = Azure::ARM::CDN::Api_2016_10_02::Models::Profile
      Endpoint = Azure::ARM::CDN::Api_2016_10_02::Models::Endpoint
      Origin = Azure::ARM::CDN::Api_2016_10_02::Models::Origin
      CustomDomain = Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomain
      EdgeNode = Azure::ARM::CDN::Api_2016_10_02::Models::EdgeNode
      SkuName = Azure::ARM::CDN::Api_2016_10_02::Models::SkuName
      ProfileResourceState = Azure::ARM::CDN::Api_2016_10_02::Models::ProfileResourceState
      OptimizationType = Azure::ARM::CDN::Api_2016_10_02::Models::OptimizationType
      EndpointResourceState = Azure::ARM::CDN::Api_2016_10_02::Models::EndpointResourceState
      QueryStringCachingBehavior = Azure::ARM::CDN::Api_2016_10_02::Models::QueryStringCachingBehavior
      GeoFilterActions = Azure::ARM::CDN::Api_2016_10_02::Models::GeoFilterActions
      OriginResourceState = Azure::ARM::CDN::Api_2016_10_02::Models::OriginResourceState
      CustomDomainResourceState = Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomainResourceState
      CustomHttpsProvisioningState = Azure::ARM::CDN::Api_2016_10_02::Models::CustomHttpsProvisioningState
      ResourceType = Azure::ARM::CDN::Api_2016_10_02::Models::ResourceType
    end

    #
    # CDN
    #
    class CDNClass
      attr_reader :profiles, :endpoints, :origins, :custom_domains, :edge_nodes, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::CDN::Api_2016_10_02::CdnManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @profiles = client.profiles
        @endpoints = client.endpoints
        @origins = client.origins
        @custom_domains = client.custom_domains
        @edge_nodes = client.edge_nodes
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::CDN::Api_2016_10_02::CdnManagementClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def custom_domain_parameters
          Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomainParameters
        end
        def sku
          Azure::ARM::CDN::Api_2016_10_02::Models::Sku
        end
        def custom_domain_list_result
          Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomainListResult
        end
        def profile_list_result
          Azure::ARM::CDN::Api_2016_10_02::Models::ProfileListResult
        end
        def validate_custom_domain_input
          Azure::ARM::CDN::Api_2016_10_02::Models::ValidateCustomDomainInput
        end
        def sso_uri
          Azure::ARM::CDN::Api_2016_10_02::Models::SsoUri
        end
        def validate_custom_domain_output
          Azure::ARM::CDN::Api_2016_10_02::Models::ValidateCustomDomainOutput
        end
        def deep_created_origin
          Azure::ARM::CDN::Api_2016_10_02::Models::DeepCreatedOrigin
        end
        def check_name_availability_input
          Azure::ARM::CDN::Api_2016_10_02::Models::CheckNameAvailabilityInput
        end
        def endpoint_list_result
          Azure::ARM::CDN::Api_2016_10_02::Models::EndpointListResult
        end
        def check_name_availability_output
          Azure::ARM::CDN::Api_2016_10_02::Models::CheckNameAvailabilityOutput
        end
        def endpoint_update_parameters
          Azure::ARM::CDN::Api_2016_10_02::Models::EndpointUpdateParameters
        end
        def resource_usage
          Azure::ARM::CDN::Api_2016_10_02::Models::ResourceUsage
        end
        def load_parameters
          Azure::ARM::CDN::Api_2016_10_02::Models::LoadParameters
        end
        def resource_usage_list_result
          Azure::ARM::CDN::Api_2016_10_02::Models::ResourceUsageListResult
        end
        def origin_update_parameters
          Azure::ARM::CDN::Api_2016_10_02::Models::OriginUpdateParameters
        end
        def operation_display
          Azure::ARM::CDN::Api_2016_10_02::Models::OperationDisplay
        end
        def origin_list_result
          Azure::ARM::CDN::Api_2016_10_02::Models::OriginListResult
        end
        def profile_update_parameters
          Azure::ARM::CDN::Api_2016_10_02::Models::ProfileUpdateParameters
        end
        def operation
          Azure::ARM::CDN::Api_2016_10_02::Models::Operation
        end
        def supported_optimization_types_result
          Azure::ARM::CDN::Api_2016_10_02::Models::SupportedOptimizationTypesResult
        end
        def edgenode_result
          Azure::ARM::CDN::Api_2016_10_02::Models::EdgenodeResult
        end
        def purge_parameters
          Azure::ARM::CDN::Api_2016_10_02::Models::PurgeParameters
        end
        def operation_list_result
          Azure::ARM::CDN::Api_2016_10_02::Models::OperationListResult
        end
        def error_response
          Azure::ARM::CDN::Api_2016_10_02::Models::ErrorResponse
        end
        def geo_filter
          Azure::ARM::CDN::Api_2016_10_02::Models::GeoFilter
        end
        def cidr_ip_address
          Azure::ARM::CDN::Api_2016_10_02::Models::CidrIpAddress
        end
        def ip_address_group
          Azure::ARM::CDN::Api_2016_10_02::Models::IpAddressGroup
        end
        def profile
          Azure::ARM::CDN::Api_2016_10_02::Models::Profile
        end
        def endpoint
          Azure::ARM::CDN::Api_2016_10_02::Models::Endpoint
        end
        def origin
          Azure::ARM::CDN::Api_2016_10_02::Models::Origin
        end
        def custom_domain
          Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomain
        end
        def edge_node
          Azure::ARM::CDN::Api_2016_10_02::Models::EdgeNode
        end
        def sku_name
          Azure::ARM::CDN::Api_2016_10_02::Models::SkuName
        end
        def profile_resource_state
          Azure::ARM::CDN::Api_2016_10_02::Models::ProfileResourceState
        end
        def optimization_type
          Azure::ARM::CDN::Api_2016_10_02::Models::OptimizationType
        end
        def endpoint_resource_state
          Azure::ARM::CDN::Api_2016_10_02::Models::EndpointResourceState
        end
        def query_string_caching_behavior
          Azure::ARM::CDN::Api_2016_10_02::Models::QueryStringCachingBehavior
        end
        def geo_filter_actions
          Azure::ARM::CDN::Api_2016_10_02::Models::GeoFilterActions
        end
        def origin_resource_state
          Azure::ARM::CDN::Api_2016_10_02::Models::OriginResourceState
        end
        def custom_domain_resource_state
          Azure::ARM::CDN::Api_2016_10_02::Models::CustomDomainResourceState
        end
        def custom_https_provisioning_state
          Azure::ARM::CDN::Api_2016_10_02::Models::CustomHttpsProvisioningState
        end
        def resource_type
          Azure::ARM::CDN::Api_2016_10_02::Models::ResourceType
        end
      end
    end
end
