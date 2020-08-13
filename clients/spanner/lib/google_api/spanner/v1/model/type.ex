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

defmodule GoogleApi.Spanner.V1.Model.Type do
  @moduledoc """
  `Type` indicates the type of a Cloud Spanner value, as might be stored in a table cell or returned from an SQL query.

  ## Attributes

  *   `arrayElementType` (*type:* `GoogleApi.Spanner.V1.Model.Type.t`, *default:* `nil`) - If code == ARRAY, then `array_element_type` is the type of the array elements.
  *   `code` (*type:* `String.t`, *default:* `nil`) - Required. The TypeCode for this type.
  *   `structType` (*type:* `GoogleApi.Spanner.V1.Model.StructType.t`, *default:* `nil`) - If code == STRUCT, then `struct_type` provides type information for the struct's fields.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayElementType => GoogleApi.Spanner.V1.Model.Type.t(),
          :code => String.t(),
          :structType => GoogleApi.Spanner.V1.Model.StructType.t()
        }

  field(:arrayElementType, as: GoogleApi.Spanner.V1.Model.Type)
  field(:code)
  field(:structType, as: GoogleApi.Spanner.V1.Model.StructType)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Type do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Type.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Type do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
