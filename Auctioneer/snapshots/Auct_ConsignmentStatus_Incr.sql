{% snapshot Auct_ConsignmentStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignmentStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentStatus_InterView]
{% endsnapshot %}