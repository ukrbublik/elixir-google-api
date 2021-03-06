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

defmodule GoogleApi.YouTube.V3.Model.ChannelSectionContentDetails do
  @moduledoc """
  Details about a channelsection, including playlists and channels.

  ## Attributes

  *   `channels` (*type:* `list(String.t)`, *default:* `nil`) - The channel ids for type multiple_channels.
  *   `playlists` (*type:* `list(String.t)`, *default:* `nil`) - The playlist ids for type single_playlist and multiple_playlists. For singlePlaylist, only one playlistId is allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channels => list(String.t()),
          :playlists => list(String.t())
        }

  field(:channels, type: :list)
  field(:playlists, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelSectionContentDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ChannelSectionContentDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelSectionContentDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
