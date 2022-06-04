--query 3.3.1

select a.project_title
from project a join scientific_field_project b on (a.project_id = b.project_id)
               join scientific_field c on (b.sc_field_id = c.sc_field_id)
where a.date_end >= now() and
      c.name_of_sc_f=(?)
order by a.project_title asc


--query 3.3.2

select distinct a.researcher_last_name,
                a.researcher_first_name
from researcher a join researcher_works_org b on ( a.researcher_id = b.researcher_id)
                  join project c on (b.org_id = c.org_id)
                  join res_works_on_project d on (c.project_id = d.project_id and a.researcher_id = d.researcher_id)
                  join scientific_field_project e on (c.project_id = e.project_id)
                  join scientific_field f on (e.sc_field_id = f.sc_field_id )  
where c.date_end >= now() and
      (b.date_end_of_work is null or year(b.date_end_of_work) >= year(now())) and
      f.name_of_sc_f= (?)
order by a.researcher_last_name asc,
         a.researcher_first_name asc
         
