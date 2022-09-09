{% snapshot Auct_Charge_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ChargeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Charge_InterView]
{% endsnapshot %}