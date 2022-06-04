/* QUERY 3.3 */


select count(c.project_id),
       c.project_title,
       count(a.researcher_id),
       a.researcher_last_name,
       a.researcher_first_name,
    
from researcher a join res_works_on_project b on ( a.researcher_id = b.researcher_id)
                  join project c on (b.project_id = c.project_id)
                  join scientific_field_project d on (c.project_id = d.project_id)
                  join scientific_field e on (e.sc_field_id = d.sc_field_id)
  
where e.sc_field_id=(??)
    
group by c.project_title, a.researcher_last_name, a.researcher_first_name
order by count(c.project_id)  desc count(a.researcher_id) desc 
