{% snapshot Auct_CredentialDisbursement_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CredentialDisbursementID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CredentialDisbursement_InterView]
{% endsnapshot %}