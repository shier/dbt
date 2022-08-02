{% snapshot AH_ListingCommentsMedias_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_ListingCommentsMedias_InterView]
{% endsnapshot %}