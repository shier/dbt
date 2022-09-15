
  
  if object_id ('"stg"."SZ_AH_AllProperties_One_Column__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."SZ_AH_AllProperties_One_Column__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."SZ_AH_AllProperties_One_Column__dbt_tmp"','U') is not null
    begin
    drop table "stg"."SZ_AH_AllProperties_One_Column__dbt_tmp"
    end


   EXEC('create view stg.SZ_AH_AllProperties_One_Column__dbt_tmp_temp_view as
    





    

    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 2694972

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3723813

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3752016

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 4507814

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 7052946

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 10045185

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 13549467

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 14959150

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 17214902

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19310748

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19338647

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19367902

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 21806654

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 25897193

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DateTimeNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 26431194

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161008

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161016

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161203

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161207

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161211

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161215

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161219

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161223

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161227

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161231

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161235

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161239

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161243

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161247

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161733

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161737

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673475

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673479

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673483

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673487

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 810050

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 840229

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 1250225

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 2694977

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3730851

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3760788

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 5282840

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 7635382

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 10045187

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 13724070

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 15658043

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19289625

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19310751

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19346144

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19367903

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 21817611

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 25897194

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 26431196

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161010

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161018

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161204

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161208

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161212

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161216

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161220

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161224

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161228

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161232

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161236

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161240

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161244

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161271

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161734

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 633102

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673476

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673480

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673484

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673488

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 810051

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 1043518

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 2080452

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3708441

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3737940

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3901735

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 6529375

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 9888915

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 11102055

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 14589344

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(IntNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 15658044

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19289626

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19310752

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19353344

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19367904

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 21833162

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 25897195

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161012

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161020

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161205

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161209

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161213

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161217

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161221

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161225

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161229

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161233

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161237

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(IntNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161241

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161245

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161275

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161735

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673473

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673477

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673481

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673485

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673489

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 810052

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 1250223

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 2533219

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3716724

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 3744978

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 4016506

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 6557150

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 9895950

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 11102056

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 14589345

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 16575279

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19289629

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19310753

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 19360781

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 21259499

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 23362439

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(DecimalNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 26254668

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161014

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(EnumNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161202

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161206

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161210

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161214

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161218

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161222

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161226

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161230

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161234

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161238

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161242

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161246

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161732

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 161736

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673474

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673478

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(BoolNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673482

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673486

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 673490

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(IntNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 840228

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 1250224

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
        
        
        
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast(StringNativeValue as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = 2545215

        ) a 
        inner join stg.SZ_AH_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    
    select 
        '''' as listingid, '''' as customfieldid, '''' as customfieldname, '''' as customfieldvalue 
    where 2=1

    ');

  CREATE TABLE "stg"."SZ_AH_AllProperties_One_Column__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.SZ_AH_AllProperties_One_Column__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."SZ_AH_AllProperties_One_Column__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."SZ_AH_AllProperties_One_Column__dbt_tmp_temp_view"
    end


