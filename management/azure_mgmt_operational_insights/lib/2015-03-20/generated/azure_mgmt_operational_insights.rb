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
require '2015-03-20/generated/azure_mgmt_operational_insights/module_definition'
require 'ms_rest_azure'

module Azure::OperationalInsights::Mgmt::V2015_03_20
  autoload :StorageInsights,                                    '2015-03-20/generated/azure_mgmt_operational_insights/storage_insights.rb'
  autoload :Workspaces,                                         '2015-03-20/generated/azure_mgmt_operational_insights/workspaces.rb'
  autoload :SavedSearches,                                      '2015-03-20/generated/azure_mgmt_operational_insights/saved_searches.rb'
  autoload :Operations,                                         '2015-03-20/generated/azure_mgmt_operational_insights/operations.rb'
  autoload :OperationalInsightsManagementClient,                '2015-03-20/generated/azure_mgmt_operational_insights/operational_insights_management_client.rb'

  module Models
    autoload :SearchGetSchemaResponse,                            '2015-03-20/generated/azure_mgmt_operational_insights/models/search_get_schema_response.rb'
    autoload :StorageAccount,                                     '2015-03-20/generated/azure_mgmt_operational_insights/models/storage_account.rb'
    autoload :Operation,                                          '2015-03-20/generated/azure_mgmt_operational_insights/models/operation.rb'
    autoload :StorageInsightStatus,                               '2015-03-20/generated/azure_mgmt_operational_insights/models/storage_insight_status.rb'
    autoload :LinkTarget,                                         '2015-03-20/generated/azure_mgmt_operational_insights/models/link_target.rb'
    autoload :Tag,                                                '2015-03-20/generated/azure_mgmt_operational_insights/models/tag.rb'
    autoload :SearchSort,                                         '2015-03-20/generated/azure_mgmt_operational_insights/models/search_sort.rb'
    autoload :StorageInsightListResult,                           '2015-03-20/generated/azure_mgmt_operational_insights/models/storage_insight_list_result.rb'
    autoload :SearchMetadata,                                     '2015-03-20/generated/azure_mgmt_operational_insights/models/search_metadata.rb'
    autoload :Resource,                                           '2015-03-20/generated/azure_mgmt_operational_insights/models/resource.rb'
    autoload :SavedSearchesListResult,                            '2015-03-20/generated/azure_mgmt_operational_insights/models/saved_searches_list_result.rb'
    autoload :ProxyResource,                                      '2015-03-20/generated/azure_mgmt_operational_insights/models/proxy_resource.rb'
    autoload :OperationDisplay,                                   '2015-03-20/generated/azure_mgmt_operational_insights/models/operation_display.rb'
    autoload :WorkspacePurgeBodyFilters,                          '2015-03-20/generated/azure_mgmt_operational_insights/models/workspace_purge_body_filters.rb'
    autoload :CoreSummary,                                        '2015-03-20/generated/azure_mgmt_operational_insights/models/core_summary.rb'
    autoload :WorkspacePurgeBody,                                 '2015-03-20/generated/azure_mgmt_operational_insights/models/workspace_purge_body.rb'
    autoload :SavedSearch,                                        '2015-03-20/generated/azure_mgmt_operational_insights/models/saved_search.rb'
    autoload :WorkspacePurgeResponse,                             '2015-03-20/generated/azure_mgmt_operational_insights/models/workspace_purge_response.rb'
    autoload :OperationListResult,                                '2015-03-20/generated/azure_mgmt_operational_insights/models/operation_list_result.rb'
    autoload :WorkspacePurgeStatusResponse,                       '2015-03-20/generated/azure_mgmt_operational_insights/models/workspace_purge_status_response.rb'
    autoload :SearchSchemaValue,                                  '2015-03-20/generated/azure_mgmt_operational_insights/models/search_schema_value.rb'
    autoload :SharedKeys,                                         '2015-03-20/generated/azure_mgmt_operational_insights/models/shared_keys.rb'
    autoload :SearchMetadataSchema,                               '2015-03-20/generated/azure_mgmt_operational_insights/models/search_metadata_schema.rb'
    autoload :AvailableServiceTier,                               '2015-03-20/generated/azure_mgmt_operational_insights/models/available_service_tier.rb'
    autoload :StorageInsight,                                     '2015-03-20/generated/azure_mgmt_operational_insights/models/storage_insight.rb'
    autoload :SearchSortEnum,                                     '2015-03-20/generated/azure_mgmt_operational_insights/models/search_sort_enum.rb'
    autoload :StorageInsightState,                                '2015-03-20/generated/azure_mgmt_operational_insights/models/storage_insight_state.rb'
    autoload :PurgeState,                                         '2015-03-20/generated/azure_mgmt_operational_insights/models/purge_state.rb'
    autoload :SkuNameEnum,                                        '2015-03-20/generated/azure_mgmt_operational_insights/models/sku_name_enum.rb'
  end
end
