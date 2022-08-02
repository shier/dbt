{% snapshot Auct_OAuthAuthorization_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='OAuthAuthorizationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_OAuthAuthorization_InterView]
{% endsnapshot %}