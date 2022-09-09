{% snapshot Auct_ReviewStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReviewStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ReviewStatus_InterView]
{% endsnapshot %}