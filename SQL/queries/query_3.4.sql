select c.num_of_projects as num_of_projects,
         c.org_id as org
  from (
          select count(a.org_id) num_of_projects,
                 year(b.start_date) year_of_projects,
                 a.org_id
          from organisation a join project b on (a.org_id = b.org_id)
          group by year(b.start_date), 
                   a.org_id
       ) c  join 
       (
          -- same query
          select count(a.org_id) num_of_projects,
                 year(b.start_date) year_of_projects,
                 a.org_id
          from organisation a join project b on (a.org_id = b.org_id)
          group by year(b.start_date), 
                a.org_id
       ) d on (c.year_of_projects = d.year_of_projects + 1 and c.org_id = d.org_id)  -- but join in next year
  where (c.num_of_projects >= 10 and d.num_of_projects >= 10) and (c.num_of_projects = d.num_of_projects)
group by num_of_projects, org 