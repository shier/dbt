{% snapshot Mer_TicketOrders_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='OrderID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_TicketOrders_InterView]
{% endsnapshot %}