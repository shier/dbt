{% snapshot Auct_UserTaskTypes_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaskTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UserTaskTypes_InterView]
{% endsnapshot %}