{% snapshot Auct_GalaTicketType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='GalaTicketTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_GalaTicketType_InterView]
{% endsnapshot %}