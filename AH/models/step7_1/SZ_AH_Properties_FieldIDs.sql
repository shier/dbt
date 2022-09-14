{{ config(materialized='table',schema='stg')}}

select ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS Sequence,
            cf.name, 
            cf.id, 
            count(*) as cnt
        from stg.AH_Listingproperties_FinalView lp 
            inner join stg.AH_CustomFields_FinalView cf 
            on lp.CustomFieldID = cf.id
        group by cf.Name, cf.id