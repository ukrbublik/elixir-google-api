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

defmodule GoogleApi.AppEngine.V1.Model.TrafficSplit do
  @moduledoc """
  Traffic routing configuration for versions within a single service. Traffic splits define how traffic directed to the service is assigned to versions.

  ## Attributes

  *   `allocations` (*type:* `map()`, *default:* `nil`) - Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.
  *   `shardBy` (*type:* `String.t`, *default:* `nil`) - Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allocations => map(),
          :shardBy => String.t()
        }

  field(:allocations, type: :map)
  field(:shardBy)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.TrafficSplit do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.TrafficSplit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.TrafficSplit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
