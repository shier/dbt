{% snapshot Auct_ConsignmentVideo_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VideoID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignmentVideo_InterView]
{% endsnapshot %}