{% snapshot Auct_BlockBidSignature_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BlockBidSignatureID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BlockBidSignature_InterView]
{% endsnapshot %}