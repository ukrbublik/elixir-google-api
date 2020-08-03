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

defmodule GoogleApi.CustomSearch.V1.Model.Result do
  @moduledoc """
  A custom search result.

  ## Attributes

  *   `cacheId` (*type:* `String.t`, *default:* `nil`) - Indicates the ID of Google's cached version of the search result.
  *   `displayLink` (*type:* `String.t`, *default:* `nil`) - An abridged version of this search result’s URL, e.g. www.example.com.
  *   `fileFormat` (*type:* `String.t`, *default:* `nil`) - The file format of the search result.
  *   `formattedUrl` (*type:* `String.t`, *default:* `nil`) - The URL displayed after the snippet for each search result.
  *   `htmlFormattedUrl` (*type:* `String.t`, *default:* `nil`) - The HTML-formatted URL displayed after the snippet for each search result.
  *   `htmlSnippet` (*type:* `String.t`, *default:* `nil`) - The snippet of the search result, in HTML.
  *   `htmlTitle` (*type:* `String.t`, *default:* `nil`) - The title of the search result, in HTML.
  *   `image` (*type:* `GoogleApi.CustomSearch.V1.Model.ResultImage.t`, *default:* `nil`) - Image belonging to a custom search result.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - A unique identifier for the type of current object. For this API, it is `customsearch#result.`
  *   `labels` (*type:* `list(GoogleApi.CustomSearch.V1.Model.ResultLabels.t)`, *default:* `nil`) - Encapsulates all information about [refinement labels](https://developers.google.com/custom-search/docs/xml_results).
  *   `link` (*type:* `String.t`, *default:* `nil`) - The full URL to which the search result is pointing, e.g. http://www.example.com/foo/bar.
  *   `mime` (*type:* `String.t`, *default:* `nil`) - The MIME type of the search result.
  *   `pagemap` (*type:* `map()`, *default:* `nil`) - Contains [PageMap](https://developers.google.com/custom-search/docs/structured_data#pagemaps) information for this search result.
  *   `snippet` (*type:* `String.t`, *default:* `nil`) - The snippet of the search result, in plain text.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the search result, in plain text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheId => String.t(),
          :displayLink => String.t(),
          :fileFormat => String.t(),
          :formattedUrl => String.t(),
          :htmlFormattedUrl => String.t(),
          :htmlSnippet => String.t(),
          :htmlTitle => String.t(),
          :image => GoogleApi.CustomSearch.V1.Model.ResultImage.t(),
          :kind => String.t(),
          :labels => list(GoogleApi.CustomSearch.V1.Model.ResultLabels.t()),
          :link => String.t(),
          :mime => String.t(),
          :pagemap => map(),
          :snippet => String.t(),
          :title => String.t()
        }

  field(:cacheId)
  field(:displayLink)
  field(:fileFormat)
  field(:formattedUrl)
  field(:htmlFormattedUrl)
  field(:htmlSnippet)
  field(:htmlTitle)
  field(:image, as: GoogleApi.CustomSearch.V1.Model.ResultImage)
  field(:kind)
  field(:labels, as: GoogleApi.CustomSearch.V1.Model.ResultLabels, type: :list)
  field(:link)
  field(:mime)
  field(:pagemap, type: :map)
  field(:snippet)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.Result do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.Result.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.Result do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
