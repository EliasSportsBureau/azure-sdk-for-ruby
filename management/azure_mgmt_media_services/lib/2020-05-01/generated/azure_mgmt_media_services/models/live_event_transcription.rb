# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Describes the transcription tracks in the output of a live event,
    # generated using speech-to-text transcription. This property is reserved
    # for future use, any value set on this property will be ignored.
    #
    class LiveEventTranscription

      include MsRestAzure

      # @return [String] Specifies the language (locale) to be used for
      # speech-to-text transcription – it should match the spoken language in
      # the audio track. The value should be in BCP-47 format (e.g: 'en-US').
      # See https://go.microsoft.com/fwlink/?linkid=2133742 for more
      # information about the live transcription feature and the list of
      # supported languages.
      attr_accessor :language

      # @return [Array<LiveEventInputTrackSelection>] Provides a mechanism to
      # select the audio track in the input live feed, to which speech-to-text
      # transcription is applied. This property is reserved for future use, any
      # value set on this property will be ignored.
      attr_accessor :input_track_selection

      # @return [LiveEventOutputTranscriptionTrack] Describes a transcription
      # track in the output of a live event, generated using speech-to-text
      # transcription. This property is reserved for future use, any value set
      # on this property will be ignored.
      attr_accessor :output_transcription_track


      #
      # Mapper for LiveEventTranscription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventTranscription',
          type: {
            name: 'Composite',
            class_name: 'LiveEventTranscription',
            model_properties: {
              language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'language',
                type: {
                  name: 'String'
                }
              },
              input_track_selection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inputTrackSelection',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LiveEventInputTrackSelectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LiveEventInputTrackSelection'
                      }
                  }
                }
              },
              output_transcription_track: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outputTranscriptionTrack',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventOutputTranscriptionTrack'
                }
              }
            }
          }
        }
      end
    end
  end
end
