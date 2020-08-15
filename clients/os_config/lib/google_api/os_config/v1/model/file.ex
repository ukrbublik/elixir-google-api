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

defmodule GoogleApi.OSConfig.V1.Model.File do
  @moduledoc """
  A remote or local file.

  ## Attributes

  *   `allowInsecure` (*type:* `boolean()`, *default:* `nil`) - Defaults to false. When false, files will be subject to validations based on the file type: Remote: A checksum must be specified. GCS: An object generation number must be specified.
  *   `gcs` (*type:* `GoogleApi.OSConfig.V1.Model.FileGcs.t`, *default:* `nil`) - A GCS object.
  *   `localPath` (*type:* `String.t`, *default:* `nil`) - A local path to use.
  *   `remote` (*type:* `GoogleApi.OSConfig.V1.Model.FileRemote.t`, *default:* `nil`) - A generic remote file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowInsecure => boolean(),
          :gcs => GoogleApi.OSConfig.V1.Model.FileGcs.t(),
          :localPath => String.t(),
          :remote => GoogleApi.OSConfig.V1.Model.FileRemote.t()
        }

  field(:allowInsecure)
  field(:gcs, as: GoogleApi.OSConfig.V1.Model.FileGcs)
  field(:localPath)
  field(:remote, as: GoogleApi.OSConfig.V1.Model.FileRemote)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.File do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.File.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.File do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
