
With hashData as (
		Select
			HASHBYTES('MD5', concat(ProvIDErName, ApiURL, ApiVersionSuffixURL, ClientID, ClientSecret, RedirectURI, OAuthaccessToken, OAuthRefreshToken, TokenType, Cast(OAuthTokenExpirationMinutes as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OAuthAuthorization_Inter]
	)
Select * From hashData
