{% snapshot Auct_BidderApplication_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderApplicationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderApplication_InterView]
{% endsnapshot %}