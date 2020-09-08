# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2020-08-02/generated/azure_mgmt_hybrid_compute/module_definition'
require 'ms_rest_azure'

module Azure::HybridCompute::Mgmt::V2020_08_02
  autoload :Machines,                                           '2020-08-02/generated/azure_mgmt_hybrid_compute/machines.rb'
  autoload :MachineExtensions,                                  '2020-08-02/generated/azure_mgmt_hybrid_compute/machine_extensions.rb'
  autoload :Operations,                                         '2020-08-02/generated/azure_mgmt_hybrid_compute/operations.rb'
  autoload :HybridComputeManagementClient,                      '2020-08-02/generated/azure_mgmt_hybrid_compute/hybrid_compute_management_client.rb'

  module Models
    autoload :MachineListResult,                                  '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_list_result.rb'
    autoload :OperationValue,                                     '2020-08-02/generated/azure_mgmt_hybrid_compute/models/operation_value.rb'
    autoload :UpdateResource,                                     '2020-08-02/generated/azure_mgmt_hybrid_compute/models/update_resource.rb'
    autoload :OperationValueDisplayModel,                         '2020-08-02/generated/azure_mgmt_hybrid_compute/models/operation_value_display_model.rb'
    autoload :ErrorResponse,                                      '2020-08-02/generated/azure_mgmt_hybrid_compute/models/error_response.rb'
    autoload :LocationData,                                       '2020-08-02/generated/azure_mgmt_hybrid_compute/models/location_data.rb'
    autoload :Identity,                                           '2020-08-02/generated/azure_mgmt_hybrid_compute/models/identity.rb'
    autoload :ErrorDetail,                                        '2020-08-02/generated/azure_mgmt_hybrid_compute/models/error_detail.rb'
    autoload :OSProfile,                                          '2020-08-02/generated/azure_mgmt_hybrid_compute/models/osprofile.rb'
    autoload :MachineExtensionPropertiesModel,                    '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extension_properties_model.rb'
    autoload :OperationListResult,                                '2020-08-02/generated/azure_mgmt_hybrid_compute/models/operation_list_result.rb'
    autoload :MachineUpdateProperties,                            '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_update_properties.rb'
    autoload :MachineExtensionInstanceView,                       '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extension_instance_view.rb'
    autoload :MachineExtensionUpdatePropertiesModel,              '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extension_update_properties_model.rb'
    autoload :Resource,                                           '2020-08-02/generated/azure_mgmt_hybrid_compute/models/resource.rb'
    autoload :MachineExtensionsListResult,                        '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extensions_list_result.rb'
    autoload :MachineExtensionInstanceViewStatus,                 '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extension_instance_view_status.rb'
    autoload :MachineProperties,                                  '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_properties.rb'
    autoload :MachinePropertiesOsProfile,                         '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_properties_os_profile.rb'
    autoload :MachineIdentity,                                    '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_identity.rb'
    autoload :Machine,                                            '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine.rb'
    autoload :MachineUpdate,                                      '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_update.rb'
    autoload :TrackedResource,                                    '2020-08-02/generated/azure_mgmt_hybrid_compute/models/tracked_resource.rb'
    autoload :MachineExtension,                                   '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extension.rb'
    autoload :MachineExtensionUpdate,                             '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extension_update.rb'
    autoload :MachineExtensionPropertiesInstanceView,             '2020-08-02/generated/azure_mgmt_hybrid_compute/models/machine_extension_properties_instance_view.rb'
    autoload :ProxyResource,                                      '2020-08-02/generated/azure_mgmt_hybrid_compute/models/proxy_resource.rb'
    autoload :AzureEntityResource,                                '2020-08-02/generated/azure_mgmt_hybrid_compute/models/azure_entity_resource.rb'
    autoload :StatusTypes,                                        '2020-08-02/generated/azure_mgmt_hybrid_compute/models/status_types.rb'
    autoload :StatusLevelTypes,                                   '2020-08-02/generated/azure_mgmt_hybrid_compute/models/status_level_types.rb'
    autoload :InstanceViewTypes,                                  '2020-08-02/generated/azure_mgmt_hybrid_compute/models/instance_view_types.rb'
  end
end
