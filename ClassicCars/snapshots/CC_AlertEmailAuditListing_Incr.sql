{% snapshot CC_AlertEmailAuditListing_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AlertEmailAuditListingPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_AlertEmailAuditListing_InterView]
{% endsnapshot %}