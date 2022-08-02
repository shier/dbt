{% snapshot Auct_UserTaskItems_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaskItemID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UserTaskItems_InterView]
{% endsnapshot %}