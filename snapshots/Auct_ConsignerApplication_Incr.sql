{% snapshot Auct_ConsignerApplication_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConsignerApplictionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConsignerApplication_InterView]
{% endsnapshot %}