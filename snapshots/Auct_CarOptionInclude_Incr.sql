{% snapshot Auct_CarOptionInclude_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarOptionIncludeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarOptionInclude_InterView]
{% endsnapshot %}