{% snapshot CC_FsboSoftDeactivate_EmailAudit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FsboSoftDeactivate_EmailAuditPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_FsboSoftDeactivate_EmailAudit_InterView]
{% endsnapshot %}