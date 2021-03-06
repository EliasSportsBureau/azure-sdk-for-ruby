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
require '2020-05-01/generated/azure_mgmt_media_services/module_definition'
require 'ms_rest_azure'

module Azure::MediaServices::Mgmt::V2020_05_01
  autoload :AccountFilters,                                     '2020-05-01/generated/azure_mgmt_media_services/account_filters.rb'
  autoload :Operations,                                         '2020-05-01/generated/azure_mgmt_media_services/operations.rb'
  autoload :Mediaservices,                                      '2020-05-01/generated/azure_mgmt_media_services/mediaservices.rb'
  autoload :PrivateLinkResources,                               '2020-05-01/generated/azure_mgmt_media_services/private_link_resources.rb'
  autoload :PrivateEndpointConnections,                         '2020-05-01/generated/azure_mgmt_media_services/private_endpoint_connections.rb'
  autoload :Locations,                                          '2020-05-01/generated/azure_mgmt_media_services/locations.rb'
  autoload :Assets,                                             '2020-05-01/generated/azure_mgmt_media_services/assets.rb'
  autoload :AssetFilters,                                       '2020-05-01/generated/azure_mgmt_media_services/asset_filters.rb'
  autoload :ContentKeyPolicies,                                 '2020-05-01/generated/azure_mgmt_media_services/content_key_policies.rb'
  autoload :Transforms,                                         '2020-05-01/generated/azure_mgmt_media_services/transforms.rb'
  autoload :Jobs,                                               '2020-05-01/generated/azure_mgmt_media_services/jobs.rb'
  autoload :StreamingPolicies,                                  '2020-05-01/generated/azure_mgmt_media_services/streaming_policies.rb'
  autoload :StreamingLocators,                                  '2020-05-01/generated/azure_mgmt_media_services/streaming_locators.rb'
  autoload :LiveEvents,                                         '2020-05-01/generated/azure_mgmt_media_services/live_events.rb'
  autoload :LiveOutputs,                                        '2020-05-01/generated/azure_mgmt_media_services/live_outputs.rb'
  autoload :StreamingEndpoints,                                 '2020-05-01/generated/azure_mgmt_media_services/streaming_endpoints.rb'
  autoload :AzureMediaServices,                                 '2020-05-01/generated/azure_mgmt_media_services/azure_media_services.rb'

  module Models
    autoload :ContentKeyPolicyFairPlayOfflineRentalConfiguration, '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_fair_play_offline_rental_configuration.rb'
    autoload :JobCollection,                                      '2020-05-01/generated/azure_mgmt_media_services/models/job_collection.rb'
    autoload :FilterTrackPropertyCondition,                       '2020-05-01/generated/azure_mgmt_media_services/models/filter_track_property_condition.rb'
    autoload :TrackSelection,                                     '2020-05-01/generated/azure_mgmt_media_services/models/track_selection.rb'
    autoload :FilterTrackSelection,                               '2020-05-01/generated/azure_mgmt_media_services/models/filter_track_selection.rb'
    autoload :TrackPropertyCondition,                             '2020-05-01/generated/azure_mgmt_media_services/models/track_property_condition.rb'
    autoload :AccountFilterCollection,                            '2020-05-01/generated/azure_mgmt_media_services/models/account_filter_collection.rb'
    autoload :StreamingPolicyPlayReadyConfiguration,              '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy_play_ready_configuration.rb'
    autoload :ApiError,                                           '2020-05-01/generated/azure_mgmt_media_services/models/api_error.rb'
    autoload :StreamingPolicyContentKeys,                         '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy_content_keys.rb'
    autoload :ContentKeyPolicyRestrictionTokenKey,                '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_restriction_token_key.rb'
    autoload :Hls,                                                '2020-05-01/generated/azure_mgmt_media_services/models/hls.rb'
    autoload :TransformCollection,                                '2020-05-01/generated/azure_mgmt_media_services/models/transform_collection.rb'
    autoload :FirstQuality,                                       '2020-05-01/generated/azure_mgmt_media_services/models/first_quality.rb'
    autoload :OperationDisplay,                                   '2020-05-01/generated/azure_mgmt_media_services/models/operation_display.rb'
    autoload :MetricDimension,                                    '2020-05-01/generated/azure_mgmt_media_services/models/metric_dimension.rb'
    autoload :MetricSpecification,                                '2020-05-01/generated/azure_mgmt_media_services/models/metric_specification.rb'
    autoload :ClipTime,                                           '2020-05-01/generated/azure_mgmt_media_services/models/clip_time.rb'
    autoload :ServiceSpecification,                               '2020-05-01/generated/azure_mgmt_media_services/models/service_specification.rb'
    autoload :ODataError,                                         '2020-05-01/generated/azure_mgmt_media_services/models/odata_error.rb'
    autoload :Operation,                                          '2020-05-01/generated/azure_mgmt_media_services/models/operation.rb'
    autoload :JobInput,                                           '2020-05-01/generated/azure_mgmt_media_services/models/job_input.rb'
    autoload :EntityNameAvailabilityCheckOutput,                  '2020-05-01/generated/azure_mgmt_media_services/models/entity_name_availability_check_output.rb'
    autoload :LiveOutputListResult,                               '2020-05-01/generated/azure_mgmt_media_services/models/live_output_list_result.rb'
    autoload :SyncStorageKeysInput,                               '2020-05-01/generated/azure_mgmt_media_services/models/sync_storage_keys_input.rb'
    autoload :StreamingPolicyContentKey,                          '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy_content_key.rb'
    autoload :AccountEncryption,                                  '2020-05-01/generated/azure_mgmt_media_services/models/account_encryption.rb'
    autoload :DefaultKey,                                         '2020-05-01/generated/azure_mgmt_media_services/models/default_key.rb'
    autoload :StreamingLocatorContentKey,                         '2020-05-01/generated/azure_mgmt_media_services/models/streaming_locator_content_key.rb'
    autoload :PresentationTimeRange,                              '2020-05-01/generated/azure_mgmt_media_services/models/presentation_time_range.rb'
    autoload :EdgeUsageDataEventHub,                              '2020-05-01/generated/azure_mgmt_media_services/models/edge_usage_data_event_hub.rb'
    autoload :CommonEncryptionCbcs,                               '2020-05-01/generated/azure_mgmt_media_services/models/common_encryption_cbcs.rb'
    autoload :EdgePolicies,                                       '2020-05-01/generated/azure_mgmt_media_services/models/edge_policies.rb'
    autoload :ContentKeyPolicyOption,                             '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_option.rb'
    autoload :MediaServiceCollection,                             '2020-05-01/generated/azure_mgmt_media_services/models/media_service_collection.rb'
    autoload :ContentKeyPolicyProperties,                         '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_properties.rb'
    autoload :PrivateLinkServiceConnectionState,                  '2020-05-01/generated/azure_mgmt_media_services/models/private_link_service_connection_state.rb'
    autoload :CommonEncryptionCenc,                               '2020-05-01/generated/azure_mgmt_media_services/models/common_encryption_cenc.rb'
    autoload :StreamingPath,                                      '2020-05-01/generated/azure_mgmt_media_services/models/streaming_path.rb'
    autoload :ContentKeyPolicyCollection,                         '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_collection.rb'
    autoload :JobOutput,                                          '2020-05-01/generated/azure_mgmt_media_services/models/job_output.rb'
    autoload :Preset,                                             '2020-05-01/generated/azure_mgmt_media_services/models/preset.rb'
    autoload :AssetContainerSas,                                  '2020-05-01/generated/azure_mgmt_media_services/models/asset_container_sas.rb'
    autoload :Codec,                                              '2020-05-01/generated/azure_mgmt_media_services/models/codec.rb'
    autoload :StorageEncryptedAssetDecryptionData,                '2020-05-01/generated/azure_mgmt_media_services/models/storage_encrypted_asset_decryption_data.rb'
    autoload :EnvelopeEncryption,                                 '2020-05-01/generated/azure_mgmt_media_services/models/envelope_encryption.rb'
    autoload :ListStreamingLocatorsResponse,                      '2020-05-01/generated/azure_mgmt_media_services/models/list_streaming_locators_response.rb'
    autoload :NoEncryption,                                       '2020-05-01/generated/azure_mgmt_media_services/models/no_encryption.rb'
    autoload :JobErrorDetail,                                     '2020-05-01/generated/azure_mgmt_media_services/models/job_error_detail.rb'
    autoload :Layer,                                              '2020-05-01/generated/azure_mgmt_media_services/models/layer.rb'
    autoload :ListContainerSasInput,                              '2020-05-01/generated/azure_mgmt_media_services/models/list_container_sas_input.rb'
    autoload :EnabledProtocols,                                   '2020-05-01/generated/azure_mgmt_media_services/models/enabled_protocols.rb'
    autoload :ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction, '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_explicit_analog_television_restriction.rb'
    autoload :CencDrmConfiguration,                               '2020-05-01/generated/azure_mgmt_media_services/models/cenc_drm_configuration.rb'
    autoload :ListContentKeysResponse,                            '2020-05-01/generated/azure_mgmt_media_services/models/list_content_keys_response.rb'
    autoload :CbcsDrmConfiguration,                               '2020-05-01/generated/azure_mgmt_media_services/models/cbcs_drm_configuration.rb'
    autoload :ContentKeyPolicyPlayReadyPlayRight,                 '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_play_right.rb'
    autoload :Overlay,                                            '2020-05-01/generated/azure_mgmt_media_services/models/overlay.rb'
    autoload :ContentKeyPolicyPlayReadyLicense,                   '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_license.rb'
    autoload :StreamingPolicyFairPlayConfiguration,               '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy_fair_play_configuration.rb'
    autoload :StreamingPolicyCollection,                          '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy_collection.rb'
    autoload :StreamingPolicyWidevineConfiguration,               '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy_widevine_configuration.rb'
    autoload :ContentKeyPolicyConfiguration,                      '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_configuration.rb'
    autoload :Provider,                                           '2020-05-01/generated/azure_mgmt_media_services/models/provider.rb'
    autoload :Format,                                             '2020-05-01/generated/azure_mgmt_media_services/models/format.rb'
    autoload :Properties,                                         '2020-05-01/generated/azure_mgmt_media_services/models/properties.rb'
    autoload :StreamingEndpointListResult,                        '2020-05-01/generated/azure_mgmt_media_services/models/streaming_endpoint_list_result.rb'
    autoload :StorageAccount,                                     '2020-05-01/generated/azure_mgmt_media_services/models/storage_account.rb'
    autoload :StreamingEntityScaleUnit,                           '2020-05-01/generated/azure_mgmt_media_services/models/streaming_entity_scale_unit.rb'
    autoload :MediaServiceIdentity,                               '2020-05-01/generated/azure_mgmt_media_services/models/media_service_identity.rb'
    autoload :StreamingEndpointAccessControl,                     '2020-05-01/generated/azure_mgmt_media_services/models/streaming_endpoint_access_control.rb'
    autoload :EdgeUsageDataCollectionPolicy,                      '2020-05-01/generated/azure_mgmt_media_services/models/edge_usage_data_collection_policy.rb'
    autoload :AkamaiAccessControl,                                '2020-05-01/generated/azure_mgmt_media_services/models/akamai_access_control.rb'
    autoload :CheckNameAvailabilityInput,                         '2020-05-01/generated/azure_mgmt_media_services/models/check_name_availability_input.rb'
    autoload :Deinterlace,                                        '2020-05-01/generated/azure_mgmt_media_services/models/deinterlace.rb'
    autoload :PrivateEndpointConnectionListResult,                '2020-05-01/generated/azure_mgmt_media_services/models/private_endpoint_connection_list_result.rb'
    autoload :Rectangle,                                          '2020-05-01/generated/azure_mgmt_media_services/models/rectangle.rb'
    autoload :AssetFileEncryptionMetadata,                        '2020-05-01/generated/azure_mgmt_media_services/models/asset_file_encryption_metadata.rb'
    autoload :Filters,                                            '2020-05-01/generated/azure_mgmt_media_services/models/filters.rb'
    autoload :JobError,                                           '2020-05-01/generated/azure_mgmt_media_services/models/job_error.rb'
    autoload :AkamaiSignatureHeaderAuthenticationKey,             '2020-05-01/generated/azure_mgmt_media_services/models/akamai_signature_header_authentication_key.rb'
    autoload :AssetFilterCollection,                              '2020-05-01/generated/azure_mgmt_media_services/models/asset_filter_collection.rb'
    autoload :LiveEventListResult,                                '2020-05-01/generated/azure_mgmt_media_services/models/live_event_list_result.rb'
    autoload :ListPathsResponse,                                  '2020-05-01/generated/azure_mgmt_media_services/models/list_paths_response.rb'
    autoload :LiveEventActionInput,                               '2020-05-01/generated/azure_mgmt_media_services/models/live_event_action_input.rb'
    autoload :ContentKeyPolicyRestriction,                        '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_restriction.rb'
    autoload :CrossSiteAccessPolicies,                            '2020-05-01/generated/azure_mgmt_media_services/models/cross_site_access_policies.rb'
    autoload :Resource,                                           '2020-05-01/generated/azure_mgmt_media_services/models/resource.rb'
    autoload :LiveEventTranscription,                             '2020-05-01/generated/azure_mgmt_media_services/models/live_event_transcription.rb'
    autoload :Location,                                           '2020-05-01/generated/azure_mgmt_media_services/models/location.rb'
    autoload :OutputFile,                                         '2020-05-01/generated/azure_mgmt_media_services/models/output_file.rb'
    autoload :ListEdgePoliciesInput,                              '2020-05-01/generated/azure_mgmt_media_services/models/list_edge_policies_input.rb'
    autoload :LiveEventOutputTranscriptionTrack,                  '2020-05-01/generated/azure_mgmt_media_services/models/live_event_output_transcription_track.rb'
    autoload :PrivateEndpoint,                                    '2020-05-01/generated/azure_mgmt_media_services/models/private_endpoint.rb'
    autoload :LiveEventInputTrackSelection,                       '2020-05-01/generated/azure_mgmt_media_services/models/live_event_input_track_selection.rb'
    autoload :AssetStreamingLocator,                              '2020-05-01/generated/azure_mgmt_media_services/models/asset_streaming_locator.rb'
    autoload :LiveEventEncoding,                                  '2020-05-01/generated/azure_mgmt_media_services/models/live_event_encoding.rb'
    autoload :ContentKeyPolicyPlayReadyContentKeyLocation,        '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_key_location.rb'
    autoload :LiveEventPreview,                                   '2020-05-01/generated/azure_mgmt_media_services/models/live_event_preview.rb'
    autoload :StreamingLocatorCollection,                         '2020-05-01/generated/azure_mgmt_media_services/models/streaming_locator_collection.rb'
    autoload :LiveEventPreviewAccessControl,                      '2020-05-01/generated/azure_mgmt_media_services/models/live_event_preview_access_control.rb'
    autoload :KeyVaultProperties,                                 '2020-05-01/generated/azure_mgmt_media_services/models/key_vault_properties.rb'
    autoload :LiveEventInput,                                     '2020-05-01/generated/azure_mgmt_media_services/models/live_event_input.rb'
    autoload :PrivateLinkResourceListResult,                      '2020-05-01/generated/azure_mgmt_media_services/models/private_link_resource_list_result.rb'
    autoload :LiveEventInputAccessControl,                        '2020-05-01/generated/azure_mgmt_media_services/models/live_event_input_access_control.rb'
    autoload :ContentKeyPolicyTokenClaim,                         '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_token_claim.rb'
    autoload :IPAccessControl,                                    '2020-05-01/generated/azure_mgmt_media_services/models/ipaccess_control.rb'
    autoload :OperationCollection,                                '2020-05-01/generated/azure_mgmt_media_services/models/operation_collection.rb'
    autoload :IPRange,                                            '2020-05-01/generated/azure_mgmt_media_services/models/iprange.rb'
    autoload :LogSpecification,                                   '2020-05-01/generated/azure_mgmt_media_services/models/log_specification.rb'
    autoload :TransformOutput,                                    '2020-05-01/generated/azure_mgmt_media_services/models/transform_output.rb'
    autoload :AssetCollection,                                    '2020-05-01/generated/azure_mgmt_media_services/models/asset_collection.rb'
    autoload :LiveEventEndpoint,                                  '2020-05-01/generated/azure_mgmt_media_services/models/live_event_endpoint.rb'
    autoload :AccountFilter,                                      '2020-05-01/generated/azure_mgmt_media_services/models/account_filter.rb'
    autoload :TrackedResource,                                    '2020-05-01/generated/azure_mgmt_media_services/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2020-05-01/generated/azure_mgmt_media_services/models/azure_entity_resource.rb'
    autoload :ProxyResource,                                      '2020-05-01/generated/azure_mgmt_media_services/models/proxy_resource.rb'
    autoload :MediaService,                                       '2020-05-01/generated/azure_mgmt_media_services/models/media_service.rb'
    autoload :PrivateEndpointConnection,                          '2020-05-01/generated/azure_mgmt_media_services/models/private_endpoint_connection.rb'
    autoload :PrivateLinkResource,                                '2020-05-01/generated/azure_mgmt_media_services/models/private_link_resource.rb'
    autoload :Asset,                                              '2020-05-01/generated/azure_mgmt_media_services/models/asset.rb'
    autoload :AssetFilter,                                        '2020-05-01/generated/azure_mgmt_media_services/models/asset_filter.rb'
    autoload :ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader, '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_encryption_key_from_header.rb'
    autoload :ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier, '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_encryption_key_from_key_identifier.rb'
    autoload :ContentKeyPolicyOpenRestriction,                    '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_open_restriction.rb'
    autoload :ContentKeyPolicyUnknownRestriction,                 '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_unknown_restriction.rb'
    autoload :ContentKeyPolicySymmetricTokenKey,                  '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_symmetric_token_key.rb'
    autoload :ContentKeyPolicyRsaTokenKey,                        '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_rsa_token_key.rb'
    autoload :ContentKeyPolicyX509CertificateTokenKey,            '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_x509certificate_token_key.rb'
    autoload :ContentKeyPolicyTokenRestriction,                   '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_token_restriction.rb'
    autoload :ContentKeyPolicyClearKeyConfiguration,              '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_clear_key_configuration.rb'
    autoload :ContentKeyPolicyUnknownConfiguration,               '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_unknown_configuration.rb'
    autoload :ContentKeyPolicyWidevineConfiguration,              '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_widevine_configuration.rb'
    autoload :ContentKeyPolicyPlayReadyConfiguration,             '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_configuration.rb'
    autoload :ContentKeyPolicyFairPlayConfiguration,              '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_fair_play_configuration.rb'
    autoload :ContentKeyPolicy,                                   '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy.rb'
    autoload :Audio,                                              '2020-05-01/generated/azure_mgmt_media_services/models/audio.rb'
    autoload :AacAudio,                                           '2020-05-01/generated/azure_mgmt_media_services/models/aac_audio.rb'
    autoload :Video,                                              '2020-05-01/generated/azure_mgmt_media_services/models/video.rb'
    autoload :FaceDetectorPreset,                                 '2020-05-01/generated/azure_mgmt_media_services/models/face_detector_preset.rb'
    autoload :AudioAnalyzerPreset,                                '2020-05-01/generated/azure_mgmt_media_services/models/audio_analyzer_preset.rb'
    autoload :AudioOverlay,                                       '2020-05-01/generated/azure_mgmt_media_services/models/audio_overlay.rb'
    autoload :CopyVideo,                                          '2020-05-01/generated/azure_mgmt_media_services/models/copy_video.rb'
    autoload :Image,                                              '2020-05-01/generated/azure_mgmt_media_services/models/image.rb'
    autoload :ImageFormat,                                        '2020-05-01/generated/azure_mgmt_media_services/models/image_format.rb'
    autoload :JpgFormat,                                          '2020-05-01/generated/azure_mgmt_media_services/models/jpg_format.rb'
    autoload :PngFormat,                                          '2020-05-01/generated/azure_mgmt_media_services/models/png_format.rb'
    autoload :CopyAudio,                                          '2020-05-01/generated/azure_mgmt_media_services/models/copy_audio.rb'
    autoload :VideoLayer,                                         '2020-05-01/generated/azure_mgmt_media_services/models/video_layer.rb'
    autoload :H264Layer,                                          '2020-05-01/generated/azure_mgmt_media_services/models/h264layer.rb'
    autoload :H264Video,                                          '2020-05-01/generated/azure_mgmt_media_services/models/h264video.rb'
    autoload :JpgLayer,                                           '2020-05-01/generated/azure_mgmt_media_services/models/jpg_layer.rb'
    autoload :JpgImage,                                           '2020-05-01/generated/azure_mgmt_media_services/models/jpg_image.rb'
    autoload :MultiBitrateFormat,                                 '2020-05-01/generated/azure_mgmt_media_services/models/multi_bitrate_format.rb'
    autoload :Mp4Format,                                          '2020-05-01/generated/azure_mgmt_media_services/models/mp4format.rb'
    autoload :PngLayer,                                           '2020-05-01/generated/azure_mgmt_media_services/models/png_layer.rb'
    autoload :PngImage,                                           '2020-05-01/generated/azure_mgmt_media_services/models/png_image.rb'
    autoload :BuiltInStandardEncoderPreset,                       '2020-05-01/generated/azure_mgmt_media_services/models/built_in_standard_encoder_preset.rb'
    autoload :StandardEncoderPreset,                              '2020-05-01/generated/azure_mgmt_media_services/models/standard_encoder_preset.rb'
    autoload :VideoAnalyzerPreset,                                '2020-05-01/generated/azure_mgmt_media_services/models/video_analyzer_preset.rb'
    autoload :TransportStreamFormat,                              '2020-05-01/generated/azure_mgmt_media_services/models/transport_stream_format.rb'
    autoload :VideoOverlay,                                       '2020-05-01/generated/azure_mgmt_media_services/models/video_overlay.rb'
    autoload :Transform,                                          '2020-05-01/generated/azure_mgmt_media_services/models/transform.rb'
    autoload :JobInputClip,                                       '2020-05-01/generated/azure_mgmt_media_services/models/job_input_clip.rb'
    autoload :AbsoluteClipTime,                                   '2020-05-01/generated/azure_mgmt_media_services/models/absolute_clip_time.rb'
    autoload :UtcClipTime,                                        '2020-05-01/generated/azure_mgmt_media_services/models/utc_clip_time.rb'
    autoload :JobInputs,                                          '2020-05-01/generated/azure_mgmt_media_services/models/job_inputs.rb'
    autoload :JobInputAsset,                                      '2020-05-01/generated/azure_mgmt_media_services/models/job_input_asset.rb'
    autoload :JobInputHttp,                                       '2020-05-01/generated/azure_mgmt_media_services/models/job_input_http.rb'
    autoload :JobOutputAsset,                                     '2020-05-01/generated/azure_mgmt_media_services/models/job_output_asset.rb'
    autoload :Job,                                                '2020-05-01/generated/azure_mgmt_media_services/models/job.rb'
    autoload :StreamingPolicy,                                    '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy.rb'
    autoload :StreamingLocator,                                   '2020-05-01/generated/azure_mgmt_media_services/models/streaming_locator.rb'
    autoload :LiveOutput,                                         '2020-05-01/generated/azure_mgmt_media_services/models/live_output.rb'
    autoload :LiveEvent,                                          '2020-05-01/generated/azure_mgmt_media_services/models/live_event.rb'
    autoload :StreamingEndpoint,                                  '2020-05-01/generated/azure_mgmt_media_services/models/streaming_endpoint.rb'
    autoload :FilterTrackPropertyType,                            '2020-05-01/generated/azure_mgmt_media_services/models/filter_track_property_type.rb'
    autoload :FilterTrackPropertyCompareOperation,                '2020-05-01/generated/azure_mgmt_media_services/models/filter_track_property_compare_operation.rb'
    autoload :MetricUnit,                                         '2020-05-01/generated/azure_mgmt_media_services/models/metric_unit.rb'
    autoload :MetricAggregationType,                              '2020-05-01/generated/azure_mgmt_media_services/models/metric_aggregation_type.rb'
    autoload :StorageAccountType,                                 '2020-05-01/generated/azure_mgmt_media_services/models/storage_account_type.rb'
    autoload :StorageAuthentication,                              '2020-05-01/generated/azure_mgmt_media_services/models/storage_authentication.rb'
    autoload :AccountEncryptionKeyType,                           '2020-05-01/generated/azure_mgmt_media_services/models/account_encryption_key_type.rb'
    autoload :ManagedIdentityType,                                '2020-05-01/generated/azure_mgmt_media_services/models/managed_identity_type.rb'
    autoload :PrivateEndpointConnectionProvisioningState,         '2020-05-01/generated/azure_mgmt_media_services/models/private_endpoint_connection_provisioning_state.rb'
    autoload :PrivateEndpointServiceConnectionStatus,             '2020-05-01/generated/azure_mgmt_media_services/models/private_endpoint_service_connection_status.rb'
    autoload :AssetStorageEncryptionFormat,                       '2020-05-01/generated/azure_mgmt_media_services/models/asset_storage_encryption_format.rb'
    autoload :AssetContainerPermission,                           '2020-05-01/generated/azure_mgmt_media_services/models/asset_container_permission.rb'
    autoload :ContentKeyPolicyPlayReadyUnknownOutputPassingOption, '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_unknown_output_passing_option.rb'
    autoload :ContentKeyPolicyPlayReadyLicenseType,               '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_license_type.rb'
    autoload :ContentKeyPolicyPlayReadyContentType,               '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_type.rb'
    autoload :ContentKeyPolicyRestrictionTokenType,               '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_restriction_token_type.rb'
    autoload :ContentKeyPolicyFairPlayRentalAndLeaseKeyType,      '2020-05-01/generated/azure_mgmt_media_services/models/content_key_policy_fair_play_rental_and_lease_key_type.rb'
    autoload :AacAudioProfile,                                    '2020-05-01/generated/azure_mgmt_media_services/models/aac_audio_profile.rb'
    autoload :StretchMode,                                        '2020-05-01/generated/azure_mgmt_media_services/models/stretch_mode.rb'
    autoload :VideoSyncMode,                                      '2020-05-01/generated/azure_mgmt_media_services/models/video_sync_mode.rb'
    autoload :AnalysisResolution,                                 '2020-05-01/generated/azure_mgmt_media_services/models/analysis_resolution.rb'
    autoload :AudioAnalysisMode,                                  '2020-05-01/generated/azure_mgmt_media_services/models/audio_analysis_mode.rb'
    autoload :DeinterlaceParity,                                  '2020-05-01/generated/azure_mgmt_media_services/models/deinterlace_parity.rb'
    autoload :DeinterlaceMode,                                    '2020-05-01/generated/azure_mgmt_media_services/models/deinterlace_mode.rb'
    autoload :Rotation,                                           '2020-05-01/generated/azure_mgmt_media_services/models/rotation.rb'
    autoload :H264VideoProfile,                                   '2020-05-01/generated/azure_mgmt_media_services/models/h264video_profile.rb'
    autoload :EntropyMode,                                        '2020-05-01/generated/azure_mgmt_media_services/models/entropy_mode.rb'
    autoload :H264Complexity,                                     '2020-05-01/generated/azure_mgmt_media_services/models/h264complexity.rb'
    autoload :EncoderNamedPreset,                                 '2020-05-01/generated/azure_mgmt_media_services/models/encoder_named_preset.rb'
    autoload :InsightsType,                                       '2020-05-01/generated/azure_mgmt_media_services/models/insights_type.rb'
    autoload :OnErrorType,                                        '2020-05-01/generated/azure_mgmt_media_services/models/on_error_type.rb'
    autoload :Priority,                                           '2020-05-01/generated/azure_mgmt_media_services/models/priority.rb'
    autoload :JobErrorCode,                                       '2020-05-01/generated/azure_mgmt_media_services/models/job_error_code.rb'
    autoload :JobErrorCategory,                                   '2020-05-01/generated/azure_mgmt_media_services/models/job_error_category.rb'
    autoload :JobRetry,                                           '2020-05-01/generated/azure_mgmt_media_services/models/job_retry.rb'
    autoload :JobState,                                           '2020-05-01/generated/azure_mgmt_media_services/models/job_state.rb'
    autoload :TrackPropertyType,                                  '2020-05-01/generated/azure_mgmt_media_services/models/track_property_type.rb'
    autoload :TrackPropertyCompareOperation,                      '2020-05-01/generated/azure_mgmt_media_services/models/track_property_compare_operation.rb'
    autoload :StreamingLocatorContentKeyType,                     '2020-05-01/generated/azure_mgmt_media_services/models/streaming_locator_content_key_type.rb'
    autoload :StreamingPolicyStreamingProtocol,                   '2020-05-01/generated/azure_mgmt_media_services/models/streaming_policy_streaming_protocol.rb'
    autoload :EncryptionScheme,                                   '2020-05-01/generated/azure_mgmt_media_services/models/encryption_scheme.rb'
    autoload :LiveOutputResourceState,                            '2020-05-01/generated/azure_mgmt_media_services/models/live_output_resource_state.rb'
    autoload :LiveEventInputProtocol,                             '2020-05-01/generated/azure_mgmt_media_services/models/live_event_input_protocol.rb'
    autoload :LiveEventEncodingType,                              '2020-05-01/generated/azure_mgmt_media_services/models/live_event_encoding_type.rb'
    autoload :LiveEventResourceState,                             '2020-05-01/generated/azure_mgmt_media_services/models/live_event_resource_state.rb'
    autoload :StreamOptionsFlag,                                  '2020-05-01/generated/azure_mgmt_media_services/models/stream_options_flag.rb'
    autoload :StreamingEndpointResourceState,                     '2020-05-01/generated/azure_mgmt_media_services/models/streaming_endpoint_resource_state.rb'
  end
end
