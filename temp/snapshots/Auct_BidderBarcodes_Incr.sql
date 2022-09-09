{% snapshot Auct_BidderBarcodes_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TicketID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderBarcodes_InterView]
{% endsnapshot %}