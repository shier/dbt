{% snapshot Auct_NavPull_Lot_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NavPull_Lot_ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_NavPull_Lot_InterView]
{% endsnapshot %}