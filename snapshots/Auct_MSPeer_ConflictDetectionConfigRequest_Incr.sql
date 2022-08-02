{% snapshot Auct_MSPeer_ConflictDetectionConfigRequest_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MSPeer_ConflictDetectionConfigRequest_InterView]
{% endsnapshot %}