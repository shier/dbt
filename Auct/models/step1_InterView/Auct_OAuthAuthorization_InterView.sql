{{ config(materialized='view',schema='stg')}}
Select
	[OAuthAuthorizationID] [OAuthAuthorizationID],
	cast([ProviderName] as nvarchar(4000)) [ProvIDErName],
	cast([ApiURL] as nvarchar(4000)) [ApiURL],
	cast([ApiVersionSuffixURL] as nvarchar(4000)) [ApiVersionSuffixURL],
	cast([ClientID] as nvarchar(4000)) [ClientID],
	cast([ClientSecret] as nvarchar(4000)) [ClientSecret],
	cast([RedirectURI] as nvarchar(4000)) [RedirectURI],
	cast([OAuthAccessToken] as nvarchar(4000)) [OAuthaccessToken],
	cast([OAuthRefreshToken] as nvarchar(4000)) [OAuthRefreshToken],
	[OAuthTokenExpirationMinutes] [OAuthTokenExpirationMinutes],
	cast([TokenType] as nvarchar(4000)) [TokenType]
From stg.[Auct_OAuthAuthorization_Raw]
