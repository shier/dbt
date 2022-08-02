{% snapshot Auct_Department_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DepartmentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Department_InterView]
{% endsnapshot %}