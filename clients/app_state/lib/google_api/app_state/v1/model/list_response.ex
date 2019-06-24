# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AppState.V1.Model.ListResponse do
  @moduledoc """
  This is a JSON template to convert a list-response for app state.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.AppState.V1.Model.GetResponse.t)`, *default:* `nil`) - The app state data.
  *   `kind` (*type:* `String.t`, *default:* `appstate#listResponse`) - Uniquely identifies the type of this resource. Value is always the fixed string appstate#listResponse.
  *   `maximumKeyCount` (*type:* `integer()`, *default:* `nil`) - The maximum number of keys allowed for this user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.AppState.V1.Model.GetResponse.t()),
          :kind => String.t(),
          :maximumKeyCount => integer()
        }

  field(:items, as: GoogleApi.AppState.V1.Model.GetResponse, type: :list)
  field(:kind)
  field(:maximumKeyCount)
end

defimpl Poison.Decoder, for: GoogleApi.AppState.V1.Model.ListResponse do
  def decode(value, options) do
    GoogleApi.AppState.V1.Model.ListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppState.V1.Model.ListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
