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

defmodule GoogleApi.OSConfig.V1.Model.PatchInstanceFilter do
  @moduledoc """
  A filter to target VM instances for patching. The targeted VMs must meet all criteria specified. So if both labels and zones are specified, the patch job targets only VMs with those labels and in those zones.

  ## Attributes

  *   `all` (*type:* `boolean()`, *default:* `nil`) - Target all VM instances in the project. If true, no other criteria is permitted.
  *   `groupLabels` (*type:* `list(GoogleApi.OSConfig.V1.Model.PatchInstanceFilterGroupLabel.t)`, *default:* `nil`) - Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  *   `instanceNamePrefixes` (*type:* `list(String.t)`, *default:* `nil`) - Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  *   `instances` (*type:* `list(String.t)`, *default:* `nil`) - Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  *   `zones` (*type:* `list(String.t)`, *default:* `nil`) - Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :all => boolean(),
          :groupLabels => list(GoogleApi.OSConfig.V1.Model.PatchInstanceFilterGroupLabel.t()),
          :instanceNamePrefixes => list(String.t()),
          :instances => list(String.t()),
          :zones => list(String.t())
        }

  field(:all)
  field(:groupLabels, as: GoogleApi.OSConfig.V1.Model.PatchInstanceFilterGroupLabel, type: :list)
  field(:instanceNamePrefixes, type: :list)
  field(:instances, type: :list)
  field(:zones, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.PatchInstanceFilter do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.PatchInstanceFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.PatchInstanceFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
