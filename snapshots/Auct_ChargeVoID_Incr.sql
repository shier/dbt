{% snapshot Auct_ChargeVoID_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ChargeVoidID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ChargeVoID_InterView]
{% endsnapshot %}