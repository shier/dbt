{% snapshot Auct_PrimaryAudienceMedia_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PrimaryAudienceMediaID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PrimaryAudienceMedia_InterView]
{% endsnapshot %}