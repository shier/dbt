{% snapshot Auct_BidderType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderType_InterView]
{% endsnapshot %}