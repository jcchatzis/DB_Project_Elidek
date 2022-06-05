/* QUERY 3.6 */

select count(b.researcher_id) number_of_projects,
       a.researcher_last_name,
       a.researcher_first_name
from researcher a,
     res_works_on_project b,
     project c
where a.researcher_id = b.researcher_id and
      b.project_id = c.project_id and
      a.researcher_birth_date > now() - interval 40 year and
      c.date_end > now()
group by a.researcher_last_name, a.researcher_first_name
order by count(b.researcher_id) desc
