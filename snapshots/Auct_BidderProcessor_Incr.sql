{% snapshot Auct_BidderProcessor_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderProcessorID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderProcessor_InterView]
{% endsnapshot %}