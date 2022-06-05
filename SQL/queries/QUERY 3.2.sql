select c.project_title
           
from researcher a join res_works_on_project b on (a.researcher_id = b.researcher_id )
                  join project c on (b.project_id = c.project_id)

where a.researcher_last_name = (?)  and
      a.researcher_first_name = (?)
  
order by c.project_id asc


/*------*/

select  b.project_title
           
from organisation a join project b on (a.org_id = b.org_id)

where a.org_name = (?)
  
order by b.project_id desc
