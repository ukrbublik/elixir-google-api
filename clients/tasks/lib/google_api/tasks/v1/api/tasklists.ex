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

defmodule GoogleApi.Tasks.V1.Api.Tasklists do
  @moduledoc """
  API calls for all endpoints tagged `Tasklists`.
  """

  alias GoogleApi.Tasks.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes the authenticated user&#39;s specified task list.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasklists_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def tasks_tasklists_delete(connection, tasklist, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/users/@me/lists/{tasklist}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns the authenticated user&#39;s specified task list.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.TaskList{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasklists_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.TaskList.t()} | {:error, Tesla.Env.t()}
  def tasks_tasklists_get(connection, tasklist, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/@me/lists/{tasklist}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.TaskList{}])
  end

  @doc """
  Creates a new task list and adds it to the authenticated user&#39;s task lists.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TaskList): 

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.TaskList{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasklists_insert(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.TaskList.t()} | {:error, Tesla.Env.t()}
  def tasks_tasklists_insert(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/users/@me/lists")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.TaskList{}])
  end

  @doc """
  Returns all the authenticated user&#39;s task lists.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (String.t): Maximum number of task lists returned on one page. Optional. The default is 20 (max allowed: 100).
    - :pageToken (String.t): Token specifying the result page to return. Optional.

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.TaskLists{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasklists_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.TaskLists.t()} | {:error, Tesla.Env.t()}
  def tasks_tasklists_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/@me/lists")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.TaskLists{}])
  end

  @doc """
  Updates the authenticated user&#39;s specified task list. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TaskList): 

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.TaskList{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasklists_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.TaskList.t()} | {:error, Tesla.Env.t()}
  def tasks_tasklists_patch(connection, tasklist, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/users/@me/lists/{tasklist}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.TaskList{}])
  end

  @doc """
  Updates the authenticated user&#39;s specified task list.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TaskList): 

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.TaskList{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasklists_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.TaskList.t()} | {:error, Tesla.Env.t()}
  def tasks_tasklists_update(connection, tasklist, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/users/@me/lists/{tasklist}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.TaskList{}])
  end
end
