{% snapshot Auct_TaskItemTypes_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaskItemTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaskItemTypes_InterView]
{% endsnapshot %}