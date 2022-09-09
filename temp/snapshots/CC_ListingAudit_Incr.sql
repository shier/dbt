{% snapshot CC_ListingAudit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuditPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ListingAudit_InterView]
{% endsnapshot %}