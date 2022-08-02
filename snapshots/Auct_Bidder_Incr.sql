{% snapshot Auct_Bidder_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Bidder_InterView]
{% endsnapshot %}