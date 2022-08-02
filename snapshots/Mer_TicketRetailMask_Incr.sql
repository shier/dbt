{% snapshot Mer_TicketRetailMask_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_TicketRetailMask_InterView]
{% endsnapshot %}