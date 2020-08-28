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

defmodule GoogleApi.Sheets.V4.Model.ChartGroupRule do
  @moduledoc """
  An optional setting on the ChartData of the domain of a data source chart that defines buckets for the values in the domain rather than breaking out each individual value. For example, when plotting a data source chart, you can specify a histogram rule on the domain (it should only contain numeric values), grouping its values into buckets. Any values of a chart series that fall into the same bucket are aggregated based on the aggregate_type.

  ## Attributes

  *   `dateTimeRule` (*type:* `GoogleApi.Sheets.V4.Model.ChartDateTimeRule.t`, *default:* `nil`) - A ChartDateTimeRule.
  *   `histogramRule` (*type:* `GoogleApi.Sheets.V4.Model.ChartHistogramRule.t`, *default:* `nil`) - A ChartHistogramRule
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateTimeRule => GoogleApi.Sheets.V4.Model.ChartDateTimeRule.t(),
          :histogramRule => GoogleApi.Sheets.V4.Model.ChartHistogramRule.t()
        }

  field(:dateTimeRule, as: GoogleApi.Sheets.V4.Model.ChartDateTimeRule)
  field(:histogramRule, as: GoogleApi.Sheets.V4.Model.ChartHistogramRule)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ChartGroupRule do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ChartGroupRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ChartGroupRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
