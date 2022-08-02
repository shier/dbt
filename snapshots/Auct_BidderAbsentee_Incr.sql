{% snapshot Auct_BidderAbsentee_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderAbsenteeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderAbsentee_InterView]
{% endsnapshot %}