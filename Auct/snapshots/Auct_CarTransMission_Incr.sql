{% snapshot Auct_CarTransMission_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarTransMissionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarTransMission_InterView]
{% endsnapshot %}