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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiProxyRevision do
  @moduledoc """
  API proxy revision.

  ## Attributes

  *   `basepaths` (*type:* `list(String.t)`, *default:* `nil`) - Base URL of the API proxy.
  *   `configurationVersion` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConfigVersion.t`, *default:* `nil`) - Version of the API proxy configuration schema to which the API proxy
      conforms. Currently, the only supported value is 4.0
      (`majorVersion.minorVersion`). This setting may be used in the future to
      track the evolution of the API proxy format.
  *   `contextInfo` (*type:* `String.t`, *default:* `nil`) - Revision number, app name, and organization for the API proxy.
  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Time that the API proxy revision was created in milliseconds since
      epoch.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the API proxy revision.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Human-readable name of the API proxy.
  *   `entityMetaDataAsProperties` (*type:* `map()`, *default:* `nil`) - Metadata describing the API proxy revision as a key-value map.
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Time that the API proxy revision was last modified in
      milliseconds since epoch.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the API proxy.
  *   `policies` (*type:* `list(String.t)`, *default:* `nil`) - List of policy names included in the API proxy revision..
  *   `proxies` (*type:* `list(String.t)`, *default:* `nil`) - List of proxy names included in the API proxy revision.
  *   `proxyEndpoints` (*type:* `list(String.t)`, *default:* `nil`) - List of ProxyEndpoints in the `/proxies` directory of the API proxy.
      Typically, this element is included only when the API proxy was created
      using the Edge UI. This is a 'manifest' setting designed to
      provide visibility into the contents of the API proxy.
  *   `resourceFiles` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceFiles.t`, *default:* `nil`) - List of resource files included in the API proxy revision.
  *   `resources` (*type:* `list(String.t)`, *default:* `nil`) - List of the resources included in the API proxy revision formatted as
      "{type}://{name}".
  *   `revision` (*type:* `String.t`, *default:* `nil`) - API proxy revision.
  *   `sharedFlows` (*type:* `list(String.t)`, *default:* `nil`) - List of the shared flows included in the API proxy revision.
  *   `spec` (*type:* `String.t`, *default:* `nil`) - OpenAPI Specification that is associated with the API proxy.
      The value is set to a URL or to a path in the specification store.
  *   `targetEndpoints` (*type:* `list(String.t)`, *default:* `nil`) - List of TargetEndpoints in the `/targets` directory of the API proxy.
      Typically, this element is included only when the API proxy was created
      using the Edge  UI. This is a 'manifest' setting designed to
      provide visibility into the contents of the API proxy.
  *   `targetServers` (*type:* `list(String.t)`, *default:* `nil`) - List of TargetServers referenced in any TargetEndpoint in the API
      proxy. Typically, you will see this element only when the API proxy was
      created using the Edge UI. This is a 'manifest' setting
      designed to provide visibility into the contents of the API proxy.
  *   `targets` (*type:* `list(String.t)`, *default:* `nil`) - List of the targets included in the API proxy revision.
  *   `teams` (*type:* `list(String.t)`, *default:* `nil`) - List of the teams included in the API proxy revision.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type. Set to `Application`. Maintained for compatibility with
      the Apigee Edge API.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basepaths => list(String.t()),
          :configurationVersion => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConfigVersion.t(),
          :contextInfo => String.t(),
          :createdAt => String.t(),
          :description => String.t(),
          :displayName => String.t(),
          :entityMetaDataAsProperties => map(),
          :lastModifiedAt => String.t(),
          :name => String.t(),
          :policies => list(String.t()),
          :proxies => list(String.t()),
          :proxyEndpoints => list(String.t()),
          :resourceFiles => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceFiles.t(),
          :resources => list(String.t()),
          :revision => String.t(),
          :sharedFlows => list(String.t()),
          :spec => String.t(),
          :targetEndpoints => list(String.t()),
          :targetServers => list(String.t()),
          :targets => list(String.t()),
          :teams => list(String.t()),
          :type => String.t()
        }

  field(:basepaths, type: :list)
  field(:configurationVersion, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ConfigVersion)
  field(:contextInfo)
  field(:createdAt)
  field(:description)
  field(:displayName)
  field(:entityMetaDataAsProperties, type: :map)
  field(:lastModifiedAt)
  field(:name)
  field(:policies, type: :list)
  field(:proxies, type: :list)
  field(:proxyEndpoints, type: :list)
  field(:resourceFiles, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ResourceFiles)
  field(:resources, type: :list)
  field(:revision)
  field(:sharedFlows, type: :list)
  field(:spec)
  field(:targetEndpoints, type: :list)
  field(:targetServers, type: :list)
  field(:targets, type: :list)
  field(:teams, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiProxyRevision do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiProxyRevision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiProxyRevision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end