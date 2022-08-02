{% snapshot Auct_CarFeatures_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarFeatureID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarFeatures_InterView]
{% endsnapshot %}