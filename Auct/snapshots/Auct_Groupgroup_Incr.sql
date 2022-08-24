{% snapshot Auct_Groupgroup_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='GroupgroupID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Groupgroup_InterView]
{% endsnapshot %}