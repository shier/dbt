
select  
    ROW_NUMBER() OVER (ORDER BY AddressID) AS ID, Created,AddressID 
from stg.[Auct_Address_FinalView] where Created is not NULL