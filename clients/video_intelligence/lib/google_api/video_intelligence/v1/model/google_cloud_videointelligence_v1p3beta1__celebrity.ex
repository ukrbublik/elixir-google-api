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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_Celebrity do
  @moduledoc """
  Celebrity definition.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Textual description of additional information about the celebrity, if
      applicable.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The celebrity name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the celebrity. Have the format
      `video-intelligence/kg-mid` indicates a celebrity from preloaded gallery.
      kg-mid is the id in Google knowledge graph, which is unique for the
      celebrity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :displayName => String.t(),
          :name => String.t()
        }

  field(:description)
  field(:displayName)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_Celebrity do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_Celebrity.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_Celebrity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end