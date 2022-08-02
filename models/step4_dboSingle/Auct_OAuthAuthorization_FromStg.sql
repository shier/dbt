{{ config(materialized='table',schema='dbo')}}
Select
	cast([OAuthAuthorizationID] as int) [OAuthAuthorizationID],
	cast([ProvIDErName] as nvarchar(4000)) [ProvIDErName],
	cast([ApiURL] as nvarchar(4000)) [ApiURL],
	cast([ApiVersionSuffixURL] as nvarchar(4000)) [ApiVersionSuffixURL],
	cast([ClientID] as nvarchar(4000)) [ClientID],
	cast([ClientSecret] as nvarchar(4000)) [ClientSecret],
	cast([RedirectURI] as nvarchar(4000)) [RedirectURI],
	cast([OAuthaccessToken] as nvarchar(4000)) [OAuthaccessToken],
	cast([OAuthRefreshToken] as nvarchar(4000)) [OAuthRefreshToken],
	cast([OAuthTokenExpirationMinutes] as int) [OAuthTokenExpirationMinutes],
	cast([TokenType] as nvarchar(4000)) [TokenType] 
From stg.[Auct_OAuthAuthorization_FinalView]