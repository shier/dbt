{% snapshot Auct_MediaAudienceType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AudienceTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaAudienceType_InterView]
{% endsnapshot %}