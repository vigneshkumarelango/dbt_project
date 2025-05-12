select id host_id, 
        name, 
        case when is_superhost = 'f' then 'False'
             when is_superhost = 't' then 'True'
        end is_superhost,
        created_at,
        updated_at
from {{ source('raw_host_data' ,'raw_hosts') }}