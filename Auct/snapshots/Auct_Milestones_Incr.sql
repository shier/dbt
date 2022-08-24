{% snapshot Auct_Milestones_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MilestoneID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Milestones_InterView]
{% endsnapshot %}