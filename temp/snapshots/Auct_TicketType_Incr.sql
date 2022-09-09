{% snapshot Auct_TicketType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TicketTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TicketType_InterView]
{% endsnapshot %}