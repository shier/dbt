{% snapshot Auct_Carrier_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarrierID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Carrier_InterView]
{% endsnapshot %}