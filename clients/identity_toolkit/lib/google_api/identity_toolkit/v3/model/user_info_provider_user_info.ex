# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.IdentityToolkit.V3.Model.UserInfoProviderUserInfo do
  @moduledoc """


  ## Attributes

  - displayName (String.t): The user&#39;s display name at the IDP. Defaults to: `null`.
  - email (String.t): User&#39;s email at IDP. Defaults to: `null`.
  - federatedId (String.t): User&#39;s identifier at IDP. Defaults to: `null`.
  - phoneNumber (String.t): User&#39;s phone number. Defaults to: `null`.
  - photoUrl (String.t): The user&#39;s photo url at the IDP. Defaults to: `null`.
  - providerId (String.t): The IdP ID. For white listed IdPs it&#39;s a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it&#39;s the OP identifier. Defaults to: `null`.
  - rawId (String.t): User&#39;s raw identifier directly returned from IDP. Defaults to: `null`.
  - screenName (String.t): User&#39;s screen name at Twitter or login name at Github. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => any(),
          :email => any(),
          :federatedId => any(),
          :phoneNumber => any(),
          :photoUrl => any(),
          :providerId => any(),
          :rawId => any(),
          :screenName => any()
        }

  field(:displayName)
  field(:email)
  field(:federatedId)
  field(:phoneNumber)
  field(:photoUrl)
  field(:providerId)
  field(:rawId)
  field(:screenName)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.UserInfoProviderUserInfo do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.UserInfoProviderUserInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.UserInfoProviderUserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
