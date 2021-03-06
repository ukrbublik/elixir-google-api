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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec do
  @moduledoc """


  ## Attributes

  *   `maxValue` (*type:* `float()`, *default:* `nil`) - Must be specified if type is `DOUBLE`. Maximum value of the parameter.
  *   `minValue` (*type:* `float()`, *default:* `nil`) - Must be specified if type is `DOUBLE`. Minimum value of the parameter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxValue => float(),
          :minValue => float()
        }

  field(:maxValue)
  field(:minValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
