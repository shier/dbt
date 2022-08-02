{% snapshot Auct_FeeType_Credential_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CredentialID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_FeeType_Credential_InterView]
{% endsnapshot %}