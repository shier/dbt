{% snapshot Auct_FeeType_Credential_Extras_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FeeTypeCredentialExtraID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_FeeType_Credential_Extras_InterView]
{% endsnapshot %}