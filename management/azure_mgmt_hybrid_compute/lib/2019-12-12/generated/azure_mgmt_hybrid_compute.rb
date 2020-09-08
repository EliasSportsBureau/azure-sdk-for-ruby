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
require '2019-12-12/generated/azure_mgmt_hybrid_compute/module_definition'
require 'ms_rest_azure'

module Azure::HybridCompute::Mgmt::V2019_12_12
  autoload :Machines,                                           '2019-12-12/generated/azure_mgmt_hybrid_compute/machines.rb'
  autoload :MachineExtensions,                                  '2019-12-12/generated/azure_mgmt_hybrid_compute/machine_extensions.rb'
  autoload :Operations,                                         '2019-12-12/generated/azure_mgmt_hybrid_compute/operations.rb'
  autoload :HybridComputeManagementClient,                      '2019-12-12/generated/azure_mgmt_hybrid_compute/hybrid_compute_management_client.rb'

  module Models
    autoload :Sku,                                                '2019-12-12/generated/azure_mgmt_hybrid_compute/models/sku.rb'
    autoload :OperationValue,                                     '2019-12-12/generated/azure_mgmt_hybrid_compute/models/operation_value.rb'
    autoload :ResourceModelWithAllowedPropertySet,                '2019-12-12/generated/azure_mgmt_hybrid_compute/models/resource_model_with_allowed_property_set.rb'
    autoload :OperationValueDisplayModel,                         '2019-12-12/generated/azure_mgmt_hybrid_compute/models/operation_value_display_model.rb'
    autoload :MachineReconnect,                                   '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_reconnect.rb'
    autoload :LocationData,                                       '2019-12-12/generated/azure_mgmt_hybrid_compute/models/location_data.rb'
    autoload :MachineListResult,                                  '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_list_result.rb'
    autoload :ErrorDetail,                                        '2019-12-12/generated/azure_mgmt_hybrid_compute/models/error_detail.rb'
    autoload :UpdateResource,                                     '2019-12-12/generated/azure_mgmt_hybrid_compute/models/update_resource.rb'
    autoload :MachineExtensionInstanceView,                       '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extension_instance_view.rb'
    autoload :MachineReconnectProperties,                         '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_reconnect_properties.rb'
    autoload :ErrorResponse,                                      '2019-12-12/generated/azure_mgmt_hybrid_compute/models/error_response.rb'
    autoload :Resource,                                           '2019-12-12/generated/azure_mgmt_hybrid_compute/models/resource.rb'
    autoload :OperationListResult,                                '2019-12-12/generated/azure_mgmt_hybrid_compute/models/operation_list_result.rb'
    autoload :ErrorAdditionalInfo,                                '2019-12-12/generated/azure_mgmt_hybrid_compute/models/error_additional_info.rb'
    autoload :Plan,                                               '2019-12-12/generated/azure_mgmt_hybrid_compute/models/plan.rb'
    autoload :MachineExtensionInstanceViewStatus,                 '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extension_instance_view_status.rb'
    autoload :MachineExtensionPropertiesModel,                    '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extension_properties_model.rb'
    autoload :MachineUpdateProperties,                            '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_update_properties.rb'
    autoload :MachineExtensionUpdatePropertiesModel,              '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extension_update_properties_model.rb'
    autoload :MachineProperties,                                  '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_properties.rb'
    autoload :MachineExtensionsListResult,                        '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extensions_list_result.rb'
    autoload :OSProfile,                                          '2019-12-12/generated/azure_mgmt_hybrid_compute/models/osprofile.rb'
    autoload :Identity,                                           '2019-12-12/generated/azure_mgmt_hybrid_compute/models/identity.rb'
    autoload :MachinePropertiesOsProfile,                         '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_properties_os_profile.rb'
    autoload :MachineIdentity,                                    '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_identity.rb'
    autoload :Machine,                                            '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine.rb'
    autoload :MachineUpdate,                                      '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_update.rb'
    autoload :TrackedResource,                                    '2019-12-12/generated/azure_mgmt_hybrid_compute/models/tracked_resource.rb'
    autoload :MachineExtension,                                   '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extension.rb'
    autoload :MachineExtensionUpdate,                             '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extension_update.rb'
    autoload :MachineExtensionPropertiesInstanceView,             '2019-12-12/generated/azure_mgmt_hybrid_compute/models/machine_extension_properties_instance_view.rb'
    autoload :ProxyResource,                                      '2019-12-12/generated/azure_mgmt_hybrid_compute/models/proxy_resource.rb'
    autoload :AzureEntityResource,                                '2019-12-12/generated/azure_mgmt_hybrid_compute/models/azure_entity_resource.rb'
    autoload :ResourceModelWithAllowedPropertySetIdentity,        '2019-12-12/generated/azure_mgmt_hybrid_compute/models/resource_model_with_allowed_property_set_identity.rb'
    autoload :ResourceModelWithAllowedPropertySetSku,             '2019-12-12/generated/azure_mgmt_hybrid_compute/models/resource_model_with_allowed_property_set_sku.rb'
    autoload :ResourceModelWithAllowedPropertySetPlan,            '2019-12-12/generated/azure_mgmt_hybrid_compute/models/resource_model_with_allowed_property_set_plan.rb'
    autoload :StatusTypes,                                        '2019-12-12/generated/azure_mgmt_hybrid_compute/models/status_types.rb'
    autoload :StatusLevelTypes,                                   '2019-12-12/generated/azure_mgmt_hybrid_compute/models/status_level_types.rb'
    autoload :SkuTier,                                            '2019-12-12/generated/azure_mgmt_hybrid_compute/models/sku_tier.rb'
    autoload :ResourceIdentityType,                               '2019-12-12/generated/azure_mgmt_hybrid_compute/models/resource_identity_type.rb'
    autoload :InstanceViewTypes,                                  '2019-12-12/generated/azure_mgmt_hybrid_compute/models/instance_view_types.rb'
  end
end
