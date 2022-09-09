{% snapshot Mer_TicketCompCode_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Comp_Code',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_TicketCompCode_InterView]
{% endsnapshot %}