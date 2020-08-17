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

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalFrequencyRange do
  @moduledoc """
  Frequency range from `low_frequency` to `high_frequency`.

  ## Attributes

  *   `highFrequencyMhz` (*type:* `float()`, *default:* `nil`) - The highest frequency of the frequency range in MHz.
  *   `lowFrequencyMhz` (*type:* `float()`, *default:* `nil`) - The lowest frequency of the frequency range in MHz.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :highFrequencyMhz => float(),
          :lowFrequencyMhz => float()
        }

  field(:highFrequencyMhz)
  field(:lowFrequencyMhz)
end

defimpl Poison.Decoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalFrequencyRange do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalFrequencyRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalFrequencyRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
