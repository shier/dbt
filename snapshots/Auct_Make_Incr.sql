{% snapshot Auct_Make_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MakeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Make_InterView]
{% endsnapshot %}