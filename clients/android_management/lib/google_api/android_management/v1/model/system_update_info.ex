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

defmodule GoogleApi.AndroidManagement.V1.Model.SystemUpdateInfo do
  @moduledoc """
  Information about a potential pending system update.

  ## Attributes

  *   `updateReceivedTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the update was first available. A zero value indicates that this field is not set. This field is set only if an update is available (that is, updateStatus is neither UPDATE_STATUS_UNKNOWN nor UP_TO_DATE).
  *   `updateStatus` (*type:* `String.t`, *default:* `nil`) - The status of an update: whether an update exists and what type it is.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :updateReceivedTime => DateTime.t(),
          :updateStatus => String.t()
        }

  field(:updateReceivedTime, as: DateTime)
  field(:updateStatus)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.SystemUpdateInfo do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.SystemUpdateInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.SystemUpdateInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
