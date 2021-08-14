##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Insights < Domain
      class V1 < Version
        class CallSummariesList < ListResource
          ##
          # Initialize the CallSummariesList
          # @param [Version] version Version that contains the resource
          # @return [CallSummariesList] CallSummariesList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Voice/Summaries"
          end

          ##
          # Lists CallSummariesInstance records from the API as a list.
          # Unlike stream(), this operation is eager and will load `limit` records into
          # memory before returning.
          # @param [Array[String]] from The from
          # @param [Array[String]] to The to
          # @param [Array[String]] from_carrier The from_carrier
          # @param [Array[String]] to_carrier The to_carrier
          # @param [Array[String]] from_country_code The from_country_code
          # @param [Array[String]] to_country_code The to_country_code
          # @param [Boolean] branded The branded
          # @param [Boolean] verified_caller The verified_caller
          # @param [Boolean] has_tag The has_tag
          # @param [String] start_time The start_time
          # @param [String] end_time The end_time
          # @param [Array[String]] call_type The call_type
          # @param [Array[String]] call_state The call_state
          # @param [call_summaries.CallDirection] direction The direction
          # @param [call_summaries.ProcessingStateRequest] processing_state The
          #   processing_state
          # @param [call_summaries.SortBy] sort_by The sort_by
          # @param [String] subaccount The subaccount
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit.  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records.  If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Array] Array of up to limit results
          def list(from: :unset, to: :unset, from_carrier: :unset, to_carrier: :unset, from_country_code: :unset, to_country_code: :unset, branded: :unset, verified_caller: :unset, has_tag: :unset, start_time: :unset, end_time: :unset, call_type: :unset, call_state: :unset, direction: :unset, processing_state: :unset, sort_by: :unset, subaccount: :unset, limit: nil, page_size: nil)
            self.stream(
                from: from,
                to: to,
                from_carrier: from_carrier,
                to_carrier: to_carrier,
                from_country_code: from_country_code,
                to_country_code: to_country_code,
                branded: branded,
                verified_caller: verified_caller,
                has_tag: has_tag,
                start_time: start_time,
                end_time: end_time,
                call_type: call_type,
                call_state: call_state,
                direction: direction,
                processing_state: processing_state,
                sort_by: sort_by,
                subaccount: subaccount,
                limit: limit,
                page_size: page_size
            ).entries
          end

          ##
          # Streams CallSummariesInstance records from the API as an Enumerable.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [Array[String]] from The from
          # @param [Array[String]] to The to
          # @param [Array[String]] from_carrier The from_carrier
          # @param [Array[String]] to_carrier The to_carrier
          # @param [Array[String]] from_country_code The from_country_code
          # @param [Array[String]] to_country_code The to_country_code
          # @param [Boolean] branded The branded
          # @param [Boolean] verified_caller The verified_caller
          # @param [Boolean] has_tag The has_tag
          # @param [String] start_time The start_time
          # @param [String] end_time The end_time
          # @param [Array[String]] call_type The call_type
          # @param [Array[String]] call_state The call_state
          # @param [call_summaries.CallDirection] direction The direction
          # @param [call_summaries.ProcessingStateRequest] processing_state The
          #   processing_state
          # @param [call_summaries.SortBy] sort_by The sort_by
          # @param [String] subaccount The subaccount
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit. Default is no limit.
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records. If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Enumerable] Enumerable that will yield up to limit results
          def stream(from: :unset, to: :unset, from_carrier: :unset, to_carrier: :unset, from_country_code: :unset, to_country_code: :unset, branded: :unset, verified_caller: :unset, has_tag: :unset, start_time: :unset, end_time: :unset, call_type: :unset, call_state: :unset, direction: :unset, processing_state: :unset, sort_by: :unset, subaccount: :unset, limit: nil, page_size: nil)
            limits = @version.read_limits(limit, page_size)

            page = self.page(
                from: from,
                to: to,
                from_carrier: from_carrier,
                to_carrier: to_carrier,
                from_country_code: from_country_code,
                to_country_code: to_country_code,
                branded: branded,
                verified_caller: verified_caller,
                has_tag: has_tag,
                start_time: start_time,
                end_time: end_time,
                call_type: call_type,
                call_state: call_state,
                direction: direction,
                processing_state: processing_state,
                sort_by: sort_by,
                subaccount: subaccount,
                page_size: limits[:page_size],
            )

            @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
          end

          ##
          # When passed a block, yields CallSummariesInstance records from the API.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          def each
            limits = @version.read_limits

            page = self.page(page_size: limits[:page_size], )

            @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
          end

          ##
          # Retrieve a single page of CallSummariesInstance records from the API.
          # Request is executed immediately.
          # @param [Array[String]] from The from
          # @param [Array[String]] to The to
          # @param [Array[String]] from_carrier The from_carrier
          # @param [Array[String]] to_carrier The to_carrier
          # @param [Array[String]] from_country_code The from_country_code
          # @param [Array[String]] to_country_code The to_country_code
          # @param [Boolean] branded The branded
          # @param [Boolean] verified_caller The verified_caller
          # @param [Boolean] has_tag The has_tag
          # @param [String] start_time The start_time
          # @param [String] end_time The end_time
          # @param [Array[String]] call_type The call_type
          # @param [Array[String]] call_state The call_state
          # @param [call_summaries.CallDirection] direction The direction
          # @param [call_summaries.ProcessingStateRequest] processing_state The
          #   processing_state
          # @param [call_summaries.SortBy] sort_by The sort_by
          # @param [String] subaccount The subaccount
          # @param [String] page_token PageToken provided by the API
          # @param [Integer] page_number Page Number, this value is simply for client state
          # @param [Integer] page_size Number of records to return, defaults to 50
          # @return [Page] Page of CallSummariesInstance
          def page(from: :unset, to: :unset, from_carrier: :unset, to_carrier: :unset, from_country_code: :unset, to_country_code: :unset, branded: :unset, verified_caller: :unset, has_tag: :unset, start_time: :unset, end_time: :unset, call_type: :unset, call_state: :unset, direction: :unset, processing_state: :unset, sort_by: :unset, subaccount: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
            params = Twilio::Values.of({
                'From' => Twilio.serialize_list(from) { |e| e },
                'To' => Twilio.serialize_list(to) { |e| e },
                'FromCarrier' => Twilio.serialize_list(from_carrier) { |e| e },
                'ToCarrier' => Twilio.serialize_list(to_carrier) { |e| e },
                'FromCountryCode' => Twilio.serialize_list(from_country_code) { |e| e },
                'ToCountryCode' => Twilio.serialize_list(to_country_code) { |e| e },
                'Branded' => branded,
                'VerifiedCaller' => verified_caller,
                'HasTag' => has_tag,
                'StartTime' => start_time,
                'EndTime' => end_time,
                'CallType' => Twilio.serialize_list(call_type) { |e| e },
                'CallState' => Twilio.serialize_list(call_state) { |e| e },
                'Direction' => direction,
                'ProcessingState' => processing_state,
                'SortBy' => sort_by,
                'Subaccount' => subaccount,
                'PageToken' => page_token,
                'Page' => page_number,
                'PageSize' => page_size,
            })

            response = @version.page('GET', @uri, params: params)

            CallSummariesPage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of CallSummariesInstance records from the API.
          # Request is executed immediately.
          # @param [String] target_url API-generated URL for the requested results page
          # @return [Page] Page of CallSummariesInstance
          def get_page(target_url)
            response = @version.domain.request(
                'GET',
                target_url
            )
            CallSummariesPage.new(@version, response, @solution)
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Insights.V1.CallSummariesList>'
          end
        end

        class CallSummariesPage < Page
          ##
          # Initialize the CallSummariesPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [CallSummariesPage] CallSummariesPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of CallSummariesInstance
          # @param [Hash] payload Payload response from the API
          # @return [CallSummariesInstance] CallSummariesInstance
          def get_instance(payload)
            CallSummariesInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Insights.V1.CallSummariesPage>'
          end
        end

        class CallSummariesInstance < InstanceResource
          ##
          # Initialize the CallSummariesInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [CallSummariesInstance] CallSummariesInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {
                'account_sid' => payload['account_sid'],
                'call_sid' => payload['call_sid'],
                'call_type' => payload['call_type'],
                'call_state' => payload['call_state'],
                'processing_state' => payload['processing_state'],
                'created_time' => Twilio.deserialize_iso8601_datetime(payload['created_time']),
                'start_time' => Twilio.deserialize_iso8601_datetime(payload['start_time']),
                'end_time' => Twilio.deserialize_iso8601_datetime(payload['end_time']),
                'duration' => payload['duration'] == nil ? payload['duration'] : payload['duration'].to_i,
                'connect_duration' => payload['connect_duration'] == nil ? payload['connect_duration'] : payload['connect_duration'].to_i,
                'from' => payload['from'],
                'to' => payload['to'],
                'carrier_edge' => payload['carrier_edge'],
                'client_edge' => payload['client_edge'],
                'sdk_edge' => payload['sdk_edge'],
                'sip_edge' => payload['sip_edge'],
                'tags' => payload['tags'],
                'url' => payload['url'],
                'attributes' => payload['attributes'],
                'properties' => payload['properties'],
                'trust' => payload['trust'],
            }
          end

          ##
          # @return [String] The account_sid
          def account_sid
            @properties['account_sid']
          end

          ##
          # @return [String] The call_sid
          def call_sid
            @properties['call_sid']
          end

          ##
          # @return [call_summaries.CallType] The call_type
          def call_type
            @properties['call_type']
          end

          ##
          # @return [call_summaries.CallState] The call_state
          def call_state
            @properties['call_state']
          end

          ##
          # @return [call_summaries.ProcessingState] The processing_state
          def processing_state
            @properties['processing_state']
          end

          ##
          # @return [Time] The created_time
          def created_time
            @properties['created_time']
          end

          ##
          # @return [Time] The start_time
          def start_time
            @properties['start_time']
          end

          ##
          # @return [Time] The end_time
          def end_time
            @properties['end_time']
          end

          ##
          # @return [String] The duration
          def duration
            @properties['duration']
          end

          ##
          # @return [String] The connect_duration
          def connect_duration
            @properties['connect_duration']
          end

          ##
          # @return [Hash] The from
          def from
            @properties['from']
          end

          ##
          # @return [Hash] The to
          def to
            @properties['to']
          end

          ##
          # @return [Hash] The carrier_edge
          def carrier_edge
            @properties['carrier_edge']
          end

          ##
          # @return [Hash] The client_edge
          def client_edge
            @properties['client_edge']
          end

          ##
          # @return [Hash] The sdk_edge
          def sdk_edge
            @properties['sdk_edge']
          end

          ##
          # @return [Hash] The sip_edge
          def sip_edge
            @properties['sip_edge']
          end

          ##
          # @return [Array[String]] The tags
          def tags
            @properties['tags']
          end

          ##
          # @return [String] The url
          def url
            @properties['url']
          end

          ##
          # @return [Hash] The attributes
          def attributes
            @properties['attributes']
          end

          ##
          # @return [Hash] The properties
          def properties
            @properties['properties']
          end

          ##
          # @return [Hash] The trust
          def trust
            @properties['trust']
          end

          ##
          # Provide a user friendly representation
          def to_s
            "<Twilio.Insights.V1.CallSummariesInstance>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            "<Twilio.Insights.V1.CallSummariesInstance>"
          end
        end
      end
    end
  end
end