{% snapshot Auct_MediaPhotoPass_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaPhotoPassID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaPhotoPass_InterView]
{% endsnapshot %}