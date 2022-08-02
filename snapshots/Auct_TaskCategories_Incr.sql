{% snapshot Auct_TaskCategories_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaskCategoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaskCategories_InterView]
{% endsnapshot %}