# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  #
  # Service Fabric Management Client
  #
  class ClusterVersions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ClusterVersions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceFabricManagementClient] reference to the ServiceFabricManagementClient
    attr_reader :client

    #
    # Get cluster code versions
    #
    # Get cluster code versions by location
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param cluster_version [String] The cluster code version
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ClusterCodeVersionsListResult] operation results.
    #
    def get(location, api_version, subscription_id, cluster_version, custom_headers:nil)
      response = get_async(location, api_version, subscription_id, cluster_version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get cluster code versions
    #
    # Get cluster code versions by location
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param cluster_version [String] The cluster code version
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(location, api_version, subscription_id, cluster_version, custom_headers:nil)
      get_async(location, api_version, subscription_id, cluster_version, custom_headers:custom_headers).value!
    end

    #
    # Get cluster code versions
    #
    # Get cluster code versions by location
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param cluster_version [String] The cluster code version
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(location, api_version, subscription_id, cluster_version, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'cluster_version is nil' if cluster_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.ServiceFabric/locations/{location}/clusterVersions/{clusterVersion}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => subscription_id,'clusterVersion' => cluster_version},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get cluster code versions by environment
    #
    # Get cluster code versions by environment
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param environment [Enum] Cluster operating system, the default means all.
    # Possible values include: 'Windows', 'Linux'
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param cluster_version [String] The cluster code version
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ClusterCodeVersionsListResult] operation results.
    #
    def get_by_environment(location, environment, api_version, subscription_id, cluster_version, custom_headers:nil)
      response = get_by_environment_async(location, environment, api_version, subscription_id, cluster_version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get cluster code versions by environment
    #
    # Get cluster code versions by environment
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param environment [Enum] Cluster operating system, the default means all.
    # Possible values include: 'Windows', 'Linux'
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param cluster_version [String] The cluster code version
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_environment_with_http_info(location, environment, api_version, subscription_id, cluster_version, custom_headers:nil)
      get_by_environment_async(location, environment, api_version, subscription_id, cluster_version, custom_headers:custom_headers).value!
    end

    #
    # Get cluster code versions by environment
    #
    # Get cluster code versions by environment
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param environment [Enum] Cluster operating system, the default means all.
    # Possible values include: 'Windows', 'Linux'
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param cluster_version [String] The cluster code version
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_environment_async(location, environment, api_version, subscription_id, cluster_version, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'environment is nil' if environment.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'cluster_version is nil' if cluster_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.ServiceFabric/locations/{location}/environments/{environment}/clusterVersions/{clusterVersion}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'environment' => environment,'subscriptionId' => subscription_id,'clusterVersion' => cluster_version},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List cluster code versions by location
    #
    # List cluster code versions by location
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ClusterCodeVersionsListResult] operation results.
    #
    def list(location, api_version, subscription_id, custom_headers:nil)
      response = list_async(location, api_version, subscription_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List cluster code versions by location
    #
    # List cluster code versions by location
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(location, api_version, subscription_id, custom_headers:nil)
      list_async(location, api_version, subscription_id, custom_headers:custom_headers).value!
    end

    #
    # List cluster code versions by location
    #
    # List cluster code versions by location
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(location, api_version, subscription_id, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.ServiceFabric/locations/{location}/clusterVersions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List cluster code versions by environment
    #
    # List cluster code versions by environment
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param environment [Enum] Cluster operating system, the default means all.
    # Possible values include: 'Windows', 'Linux'
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ClusterCodeVersionsListResult] operation results.
    #
    def list_by_environment(location, environment, api_version, subscription_id, custom_headers:nil)
      response = list_by_environment_async(location, environment, api_version, subscription_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List cluster code versions by environment
    #
    # List cluster code versions by environment
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param environment [Enum] Cluster operating system, the default means all.
    # Possible values include: 'Windows', 'Linux'
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_environment_with_http_info(location, environment, api_version, subscription_id, custom_headers:nil)
      list_by_environment_async(location, environment, api_version, subscription_id, custom_headers:custom_headers).value!
    end

    #
    # List cluster code versions by environment
    #
    # List cluster code versions by environment
    #
    #
    # @param location [String] The location for the cluster code versions, this is
    # different from cluster location
    # @param environment [Enum] Cluster operating system, the default means all.
    # Possible values include: 'Windows', 'Linux'
    # @param api_version [String] The version of the API.
    # @param subscription_id [String] The customer subscription identifier
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_environment_async(location, environment, api_version, subscription_id, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'environment is nil' if environment.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.ServiceFabric/locations/{location}/environments/{environment}/clusterVersions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'environment' => environment,'subscriptionId' => subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end