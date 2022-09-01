{% snapshot Auct_Event_CredentialGroup_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CredentialGroupID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Event_CredentialGroup_InterView]
{% endsnapshot %}