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

defmodule GoogleApi.Spanner.V1.Model.Transaction do
  @moduledoc """
  A transaction.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - `id` may be used to identify the transaction in subsequent Read, ExecuteSql, Commit, or Rollback calls. Single-use read-only transactions do not have IDs, because single-use transactions do not support multiple requests.
  *   `readTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - For snapshot read-only transactions, the read timestamp chosen for the transaction. Not returned by default: see TransactionOptions.ReadOnly.return_read_timestamp. A timestamp in RFC3339 UTC \\"Zulu\\" format, accurate to nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :readTimestamp => DateTime.t()
        }

  field(:id)
  field(:readTimestamp, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Transaction do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Transaction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Transaction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
