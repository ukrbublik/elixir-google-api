# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityResponse do
  @moduledoc """
  The response from `userActivity:get` call.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - This token should be passed to [SearchUserActivityRequest](#SearchUserActivityRequest) to retrieve the next page.
  *   `sampleRate` (*type:* `float()`, *default:* `nil`) - This field represents the [sampling rate](https://support.google.com/analytics/answer/2637192) for the given request and is a number between 0.0 to 1.0. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details.
  *   `sessions` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.UserActivitySession.t)`, *default:* `nil`) - Each record represents a session (device details, duration, etc).
  *   `totalRows` (*type:* `integer()`, *default:* `nil`) - Total rows returned by this query (across different pages).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :sampleRate => float(),
          :sessions => list(GoogleApi.AnalyticsReporting.V4.Model.UserActivitySession.t()),
          :totalRows => integer()
        }

  field(:nextPageToken)
  field(:sampleRate)
  field(:sessions, as: GoogleApi.AnalyticsReporting.V4.Model.UserActivitySession, type: :list)
  field(:totalRows)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityResponse do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.SearchUserActivityResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
