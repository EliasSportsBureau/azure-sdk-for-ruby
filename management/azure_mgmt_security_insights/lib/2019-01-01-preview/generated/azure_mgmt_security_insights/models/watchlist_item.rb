# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Represents a Watchlist Item in Azure Security Insights.
    #
    class WatchlistItem < Resource

      include MsRestAzure

      # @return [UserInfo] Describes a user that created the watchlist
      attr_accessor :created_by

      # @return [UserInfo] Describes a user that updated the watchlist
      attr_accessor :updated_by

      # @return [String] Name of the watchlist item
      attr_accessor :watchlist_item_name

      # @return A key-value pair for a watchlist item
      attr_accessor :watchlist_item_pair

      # @return A key-value pair for a watchlist item entity mapping
      attr_accessor :entity_mapping

      # @return [String] The tenantId to which this watchlist item belongs to
      attr_accessor :tenant_id

      # @return [DateTime] The time the watchlist item was created
      attr_accessor :created_time_utc

      # @return [DateTime] The last time the watchlist item was updated
      attr_accessor :last_updated_time_utc

      # @return [DateTime] The time to live for the watchlist item
      attr_accessor :time_to_live_utc

      # @return [String] The type of the watchlist item
      attr_accessor :watchlist_item_type

      # @return [String] The watchlist id of the parent of this watchlist item
      attr_accessor :watchlist_id


      #
      # Mapper for WatchlistItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WatchlistItem',
          type: {
            name: 'Composite',
            class_name: 'WatchlistItem',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              created_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdBy',
                type: {
                  name: 'Composite',
                  class_name: 'UserInfo'
                }
              },
              updated_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.updatedBy',
                type: {
                  name: 'Composite',
                  class_name: 'UserInfo'
                }
              },
              watchlist_item_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.watchlistItemName',
                type: {
                  name: 'String'
                }
              },
              watchlist_item_pair: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.watchlistItemPair',
                type: {
                  name: 'Object'
                }
              },
              entity_mapping: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.entityMapping',
                type: {
                  name: 'Object'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              created_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastUpdatedTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              time_to_live_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeToLiveUtc',
                type: {
                  name: 'DateTime'
                }
              },
              watchlist_item_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.watchlistItemType',
                type: {
                  name: 'String'
                }
              },
              watchlist_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.watchlistId',
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
