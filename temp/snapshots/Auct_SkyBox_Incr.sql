{% snapshot Auct_SkyBox_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SkyBoxID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SkyBox_InterView]
{% endsnapshot %}