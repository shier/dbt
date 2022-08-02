{% snapshot Auct_BidderDocumentationBits_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderDocumentationBit',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderDocumentationBits_InterView]
{% endsnapshot %}