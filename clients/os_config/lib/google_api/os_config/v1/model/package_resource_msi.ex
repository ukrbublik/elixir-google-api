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

defmodule GoogleApi.OSConfig.V1.Model.PackageResourceMSI do
  @moduledoc """
  An MSI package. MSI packages only support INSTALLED state. Install msiexec /i /qn /norestart

  ## Attributes

  *   `allowedSuccessCodes` (*type:* `list(integer())`, *default:* `nil`) - Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  *   `flags` (*type:* `list(String.t)`, *default:* `nil`) - Flags to use during package install. Appended to the defalts of "/i /qn /norestart"
  *   `source` (*type:* `GoogleApi.OSConfig.V1.Model.File.t`, *default:* `nil`) - The MSI package.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedSuccessCodes => list(integer()),
          :flags => list(String.t()),
          :source => GoogleApi.OSConfig.V1.Model.File.t()
        }

  field(:allowedSuccessCodes, type: :list)
  field(:flags, type: :list)
  field(:source, as: GoogleApi.OSConfig.V1.Model.File)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.PackageResourceMSI do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.PackageResourceMSI.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.PackageResourceMSI do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
