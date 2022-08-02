{% snapshot Auct_SponSorTickets_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponSorTicketsID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponSorTickets_InterView]
{% endsnapshot %}