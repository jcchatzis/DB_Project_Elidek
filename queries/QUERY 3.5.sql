/* QUERY 3.5 */
select d.name_of_sc_f as fieldName1, c.name_of_sc_f as fieldName2, Number from(
  select mazi.field1, mazi.field2, count(*) as Number from(
	select a.sc_field_id as field1,
            b.sc_field_id as field2
    from scientific_field_project a join scientific_field_project b on(a.project_id = b.project_id )
    where a.sc_field_id < b.sc_field_id
    group by field1, field2)as mazi
    group by mazi.field1, mazi.field2)as mazi2
  join scientific_field  d on (d.sc_field_id = mazi2.field1)
	join scientific_field  c on (c.sc_field_id = mazi2.field2)
    limit 3
