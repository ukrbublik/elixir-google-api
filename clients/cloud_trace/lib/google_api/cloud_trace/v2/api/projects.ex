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

defmodule GoogleApi.CloudTrace.V2.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudTrace.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Sends new spans to new or existing traces. You cannot update existing spans.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudTrace.V2.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. Required. The name of the project where the spans belong. The format is `projects/[PROJECT_ID]`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudTrace.V2.Model.BatchWriteSpansRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudTrace.V2.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudtrace_projects_traces_batch_write(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudTrace.V2.Model.Empty.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def cloudtrace_projects_traces_batch_write(
        connection,
        projects_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/projects/{projectsId}/traces:batchWrite", %{
        "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V2.Model.Empty{}])
  end

  @doc """
  Creates a new span.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudTrace.V2.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. Required. The resource name of the span in the following format: projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/SPAN_ID is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. [SPAN_ID] is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero.
  *   `traces_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `spans_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudTrace.V2.Model.Span.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudTrace.V2.Model.Span{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudtrace_projects_traces_spans_create_span(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudTrace.V2.Model.Span.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def cloudtrace_projects_traces_spans_create_span(
        connection,
        projects_id,
        traces_id,
        spans_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/projects/{projectsId}/traces/{tracesId}/spans/{spansId}", %{
        "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
        "tracesId" => URI.encode(traces_id, &URI.char_unreserved?/1),
        "spansId" => URI.encode(spans_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V2.Model.Span{}])
  end
end
