select count (c.project_id),
    c.project_title;
           
from researcher a join res_works_on_project b on (a.researcher_id = b.resarcher)
                  join project c on (b.project_id = c.project_id)

where a.researcher_id = (??) 
  
order by count (c.project_id) desc



/*------*/

select count (c.project_id),
    c.project_title;
           
from scientific_field a join scientific_field_project b on (a.sc_field_id =b.sc_field_id)
                        join project c on (b.project_id = c.project_id)

where a.sc_field_id = (??)
  
order by count(c.project_id) desc
