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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponse do
  @moduledoc """
  A response message for ContentAddressableStorage.BatchReadBlobs.

  ## Attributes

  *   `responses` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse.t)`, *default:* `nil`) - The responses to the requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :responses =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse.t()
            )
        }

  field(:responses,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponse do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
