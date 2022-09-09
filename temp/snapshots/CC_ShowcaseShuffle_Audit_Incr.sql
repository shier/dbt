{% snapshot CC_ShowcaseShuffle_Audit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ShowcaseShuffle_AuditPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ShowcaseShuffle_Audit_InterView]
{% endsnapshot %}