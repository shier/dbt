{% snapshot Auct_AvailableTransMission_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AvailableTransMissionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AvailableTransMission_InterView]
{% endsnapshot %}