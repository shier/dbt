{% snapshot Auct_MediaCredential_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaCredentialID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaCredential_InterView]
{% endsnapshot %}