{% snapshot Auct_SponsorgalaTickets_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorgalaTicketsID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorgalaTickets_InterView]
{% endsnapshot %}