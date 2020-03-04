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

defmodule GoogleApi.Licensing.V1.Api.LicenseAssignments do
  @moduledoc """
  API calls for all endpoints tagged `LicenseAssignments`.
  """

  alias GoogleApi.Licensing.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Revoke a license.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Licensing.V1.Connection.t`) - Connection to server
  *   `product_id` (*type:* `String.t`) - A product's unique identifier. For more information about products in this version of the API, see Products and SKUs.
  *   `sku_id` (*type:* `String.t`) - A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
  *   `user_id` (*type:* `String.t`) - The user's current primary email address. If the user's email address changes, use the new email address in your API requests.
      Since a userId is subject to change, do not use a userId value as a key for persistent data. This key could break if the current user's email address changes.
      If the userId is suspended, the license status changes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec licensing_license_assignments_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def licensing_license_assignments_delete(
        connection,
        product_id,
        sku_id,
        user_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
        "skuId" => URI.encode(sku_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Get a specific user's license by product SKU.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Licensing.V1.Connection.t`) - Connection to server
  *   `product_id` (*type:* `String.t`) - A product's unique identifier. For more information about products in this version of the API, see Products and SKUs.
  *   `sku_id` (*type:* `String.t`) - A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
  *   `user_id` (*type:* `String.t`) - The user's current primary email address. If the user's email address changes, use the new email address in your API requests.
      Since a userId is subject to change, do not use a userId value as a key for persistent data. This key could break if the current user's email address changes.
      If the userId is suspended, the license status changes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec licensing_license_assignments_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def licensing_license_assignments_get(
        connection,
        product_id,
        sku_id,
        user_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
        "skuId" => URI.encode(sku_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{}])
  end

  @doc """
  Assign a license.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Licensing.V1.Connection.t`) - Connection to server
  *   `product_id` (*type:* `String.t`) - A product's unique identifier. For more information about products in this version of the API, see Products and SKUs.
  *   `sku_id` (*type:* `String.t`) - A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Licensing.V1.Model.LicenseAssignmentInsert.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec licensing_license_assignments_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def licensing_license_assignments_insert(
        connection,
        product_id,
        sku_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/{productId}/sku/{skuId}/user", %{
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
        "skuId" => URI.encode(sku_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{}])
  end

  @doc """
  List all users assigned licenses for a specific product SKU.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Licensing.V1.Connection.t`) - Connection to server
  *   `product_id` (*type:* `String.t`) - A product's unique identifier. For more information about products in this version of the API, see Products and SKUs.
  *   `customer_id` (*type:* `String.t`) - Customer's customerId. A previous version of this API accepted the primary domain name as a value for this field.
      If the customer is suspended, the server returns an error.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maxResults query string determines how many entries are returned on each page of a large response. This is an optional parameter. The value must be a positive number.
      *   `:pageToken` (*type:* `String.t`) - Token to fetch the next page of data. The maxResults query string is related to the pageToken since maxResults determines how many entries are returned on each page. This is an optional query string. If not specified, the server returns the first page.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec licensing_license_assignments_list_for_product(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignmentList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def licensing_license_assignments_list_for_product(
        connection,
        product_id,
        customer_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/{productId}/users", %{
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :customerId, customer_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{}])
  end

  @doc """
  List all users assigned licenses for a specific product SKU.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Licensing.V1.Connection.t`) - Connection to server
  *   `product_id` (*type:* `String.t`) - A product's unique identifier. For more information about products in this version of the API, see Products and SKUs.
  *   `sku_id` (*type:* `String.t`) - A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
  *   `customer_id` (*type:* `String.t`) - Customer's customerId. A previous version of this API accepted the primary domain name as a value for this field.
      If the customer is suspended, the server returns an error.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maxResults query string determines how many entries are returned on each page of a large response. This is an optional parameter. The value must be a positive number.
      *   `:pageToken` (*type:* `String.t`) - Token to fetch the next page of data. The maxResults query string is related to the pageToken since maxResults determines how many entries are returned on each page. This is an optional query string. If not specified, the server returns the first page.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec licensing_license_assignments_list_for_product_and_sku(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignmentList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def licensing_license_assignments_list_for_product_and_sku(
        connection,
        product_id,
        sku_id,
        customer_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/{productId}/sku/{skuId}/users", %{
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
        "skuId" => URI.encode(sku_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :customerId, customer_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Licensing.V1.Model.LicenseAssignmentList{}])
  end

  @doc """
  Reassign a user's product SKU with a different SKU in the same product. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Licensing.V1.Connection.t`) - Connection to server
  *   `product_id` (*type:* `String.t`) - A product's unique identifier. For more information about products in this version of the API, see Products and SKUs.
  *   `sku_id` (*type:* `String.t`) - A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
  *   `user_id` (*type:* `String.t`) - The user's current primary email address. If the user's email address changes, use the new email address in your API requests.
      Since a userId is subject to change, do not use a userId value as a key for persistent data. This key could break if the current user's email address changes.
      If the userId is suspended, the license status changes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Licensing.V1.Model.LicenseAssignment.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec licensing_license_assignments_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def licensing_license_assignments_patch(
        connection,
        product_id,
        sku_id,
        user_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
        "skuId" => URI.encode(sku_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{}])
  end

  @doc """
  Reassign a user's product SKU with a different SKU in the same product.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Licensing.V1.Connection.t`) - Connection to server
  *   `product_id` (*type:* `String.t`) - A product's unique identifier. For more information about products in this version of the API, see Products and SKUs.
  *   `sku_id` (*type:* `String.t`) - A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
  *   `user_id` (*type:* `String.t`) - The user's current primary email address. If the user's email address changes, use the new email address in your API requests.
      Since a userId is subject to change, do not use a userId value as a key for persistent data. This key could break if the current user's email address changes.
      If the userId is suspended, the license status changes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Licensing.V1.Model.LicenseAssignment.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Licensing.V1.Model.LicenseAssignment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec licensing_license_assignments_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Licensing.V1.Model.LicenseAssignment.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def licensing_license_assignments_update(
        connection,
        product_id,
        sku_id,
        user_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/{productId}/sku/{skuId}/user/{userId}", %{
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1),
        "skuId" => URI.encode(sku_id, &URI.char_unreserved?/1),
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Licensing.V1.Model.LicenseAssignment{}])
  end
end
