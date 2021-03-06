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

defmodule GoogleApi.WebSecurityScanner.V1.Model.ScanRunErrorTrace do
  @moduledoc """
  Output only. Defines an error trace message for a ScanRun.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - Output only. Indicates the error reason code.
  *   `mostCommonHttpErrorCode` (*type:* `integer()`, *default:* `nil`) - Output only. If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  *   `scanConfigError` (*type:* `GoogleApi.WebSecurityScanner.V1.Model.ScanConfigError.t`, *default:* `nil`) - Output only. If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :mostCommonHttpErrorCode => integer(),
          :scanConfigError => GoogleApi.WebSecurityScanner.V1.Model.ScanConfigError.t()
        }

  field(:code)
  field(:mostCommonHttpErrorCode)
  field(:scanConfigError, as: GoogleApi.WebSecurityScanner.V1.Model.ScanConfigError)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1.Model.ScanRunErrorTrace do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1.Model.ScanRunErrorTrace.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1.Model.ScanRunErrorTrace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
