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

defmodule GoogleApi.OSConfig.V1.Model.PackageResource do
  @moduledoc """
  A resource that manages a system package.

  ## Attributes

  *   `apt` (*type:* `GoogleApi.OSConfig.V1.Model.PackageResourceAPT.t`, *default:* `nil`) - A package managed by Apt.
  *   `deb` (*type:* `GoogleApi.OSConfig.V1.Model.PackageResourceDeb.t`, *default:* `nil`) - A deb package file.
  *   `desiredState` (*type:* `String.t`, *default:* `nil`) - The desired_state the agent should maintain for this package. The default is to ensure the package is installed.
  *   `googet` (*type:* `GoogleApi.OSConfig.V1.Model.PackageResourceGooGet.t`, *default:* `nil`) - A package managed by GooGet.
  *   `msi` (*type:* `GoogleApi.OSConfig.V1.Model.PackageResourceMSI.t`, *default:* `nil`) - An MSI package.
  *   `rpm` (*type:* `GoogleApi.OSConfig.V1.Model.PackageResourceRPM.t`, *default:* `nil`) - An rpm package file.
  *   `yum` (*type:* `GoogleApi.OSConfig.V1.Model.PackageResourceYUM.t`, *default:* `nil`) - A package managed by YUM.
  *   `zypper` (*type:* `GoogleApi.OSConfig.V1.Model.PackageResourceZypper.t`, *default:* `nil`) - A package managed by Zypper.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apt => GoogleApi.OSConfig.V1.Model.PackageResourceAPT.t(),
          :deb => GoogleApi.OSConfig.V1.Model.PackageResourceDeb.t(),
          :desiredState => String.t(),
          :googet => GoogleApi.OSConfig.V1.Model.PackageResourceGooGet.t(),
          :msi => GoogleApi.OSConfig.V1.Model.PackageResourceMSI.t(),
          :rpm => GoogleApi.OSConfig.V1.Model.PackageResourceRPM.t(),
          :yum => GoogleApi.OSConfig.V1.Model.PackageResourceYUM.t(),
          :zypper => GoogleApi.OSConfig.V1.Model.PackageResourceZypper.t()
        }

  field(:apt, as: GoogleApi.OSConfig.V1.Model.PackageResourceAPT)
  field(:deb, as: GoogleApi.OSConfig.V1.Model.PackageResourceDeb)
  field(:desiredState)
  field(:googet, as: GoogleApi.OSConfig.V1.Model.PackageResourceGooGet)
  field(:msi, as: GoogleApi.OSConfig.V1.Model.PackageResourceMSI)
  field(:rpm, as: GoogleApi.OSConfig.V1.Model.PackageResourceRPM)
  field(:yum, as: GoogleApi.OSConfig.V1.Model.PackageResourceYUM)
  field(:zypper, as: GoogleApi.OSConfig.V1.Model.PackageResourceZypper)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.PackageResource do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.PackageResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.PackageResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
