{% snapshot Auct_BidderSources_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderSourceID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderSources_InterView]
{% endsnapshot %}