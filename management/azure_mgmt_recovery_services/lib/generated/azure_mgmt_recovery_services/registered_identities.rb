# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  #
  # Composite Swagger for Recovery Services Client
  #
  class RegisteredIdentities
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RegisteredIdentities class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesClient] reference to the RecoveryServicesClient
    attr_reader :client

    #
    # Unregisters the given container from your Recovery Services vault.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param identity_name [String] Name of the protection container to unregister.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, vault_name, identity_name, custom_headers = nil)
      response = delete_async(resource_group_name, vault_name, identity_name, custom_headers).value!
      nil
    end

    #
    # Unregisters the given container from your Recovery Services vault.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param identity_name [String] Name of the protection container to unregister.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, vault_name, identity_name, custom_headers = nil)
      delete_async(resource_group_name, vault_name, identity_name, custom_headers).value!
    end

    #
    # Unregisters the given container from your Recovery Services vault.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param identity_name [String] Name of the protection container to unregister.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, vault_name, identity_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      api_version = '2016-06-01'
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'identity_name is nil' if identity_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/registeredIdentities/{identityName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'vaultName' => vault_name,'identityName' => identity_name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end