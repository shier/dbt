{% snapshot CC_AlertEmailAudit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AlertEmailAuditPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_AlertEmailAudit_InterView]
{% endsnapshot %}