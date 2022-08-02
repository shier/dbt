{% snapshot Auct_Booth_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BoothID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Booth_InterView]
{% endsnapshot %}