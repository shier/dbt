{% snapshot CC_Feature_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FeatureName',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_Feature_InterView]
{% endsnapshot %}