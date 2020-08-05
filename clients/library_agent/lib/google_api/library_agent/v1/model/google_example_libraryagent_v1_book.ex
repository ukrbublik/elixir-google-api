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

defmodule GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Book do
  @moduledoc """
  A single book in the library.

  ## Attributes

  *   `author` (*type:* `String.t`, *default:* `nil`) - The name of the book author.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the book. Book names have the form `shelves/{shelf_id}/books/{book_id}`. The name is ignored when creating a book.
  *   `read` (*type:* `boolean()`, *default:* `nil`) - Value indicating whether the book has been read.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the book.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :author => String.t(),
          :name => String.t(),
          :read => boolean(),
          :title => String.t()
        }

  field(:author)
  field(:name)
  field(:read)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Book do
  def decode(value, options) do
    GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Book.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Book do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
