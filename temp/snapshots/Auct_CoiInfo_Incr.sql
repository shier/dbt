{% snapshot Auct_CoiInfo_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CoiInfoID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CoiInfo_InterView]
{% endsnapshot %}