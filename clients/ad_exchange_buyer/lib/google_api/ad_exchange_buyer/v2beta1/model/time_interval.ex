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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeInterval do
  @moduledoc """
  An interval of time, with an absolute start and end.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp marking the end of the range (exclusive) for which data is included.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp marking the start of the range (inclusive) for which data is included.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :startTime => DateTime.t()
        }

  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeInterval do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeInterval.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeInterval do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
