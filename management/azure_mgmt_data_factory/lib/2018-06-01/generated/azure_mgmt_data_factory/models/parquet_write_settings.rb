# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Parquet write settings.
    #
    class ParquetWriteSettings < FormatWriteSettings

      include MsRestAzure


      def initialize
        @type = "ParquetWriteSettings"
      end

      attr_accessor :type

      # @return Limit the written file's row count to be smaller than or equal
      # to the specified count. Type: integer (or Expression with resultType
      # integer).
      attr_accessor :max_rows_per_file

      # @return Specifies the file name pattern
      # <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file
      # based store without partitionOptions. Type: string (or Expression with
      # resultType string).
      attr_accessor :file_name_prefix


      #
      # Mapper for ParquetWriteSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ParquetWriteSettings',
          type: {
            name: 'Composite',
            class_name: 'ParquetWriteSettings',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              max_rows_per_file: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxRowsPerFile',
                type: {
                  name: 'Object'
                }
              },
              file_name_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileNamePrefix',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
