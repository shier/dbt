{% snapshot CC_NewsLetterissue_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NewsLetterissuePK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_NewsLetterissue_InterView]
{% endsnapshot %}