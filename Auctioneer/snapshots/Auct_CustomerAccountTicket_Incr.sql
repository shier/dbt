{% snapshot Auct_CustomerAccountTicket_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CustomerAccounTicketID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CustomerAccountTicket_InterView]
{% endsnapshot %}