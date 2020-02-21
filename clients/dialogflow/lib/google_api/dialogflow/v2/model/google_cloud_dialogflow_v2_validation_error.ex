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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ValidationError do
  @moduledoc """
  Represents a single validation error.

  ## Attributes

  *   `entries` (*type:* `list(String.t)`, *default:* `nil`) - The names of the entries that the error is associated with.
      Format:

      - "projects/<Project ID>/agent", if the error is associated with the entire
      agent.
      - "projects/<Project ID>/agent/intents/<Intent ID>", if the error is
      associated with certain intents.
      - "projects/<Project
      ID>/agent/intents/<Intent Id>/trainingPhrases/<Training Phrase ID>", if the
      error is associated with certain intent training phrases.
      - "projects/<Project ID>/agent/intents/<Intent Id>/parameters/<Parameter
      ID>", if the error is associated with certain intent parameters.
      - "projects/<Project ID>/agent/entities/<Entity ID>", if the error is
      associated with certain entities.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - The detailed error messsage.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of the error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries => list(String.t()),
          :errorMessage => String.t(),
          :severity => String.t()
        }

  field(:entries, type: :list)
  field(:errorMessage)
  field(:severity)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ValidationError do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ValidationError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ValidationError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end