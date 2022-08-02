{% snapshot Auct_TaskItems_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaskItemID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaskItems_InterView]
{% endsnapshot %}