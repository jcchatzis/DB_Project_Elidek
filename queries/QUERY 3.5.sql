/* QUERY 3.5 */
select c.name_of_sc_f, d.name_of_sc_f, Number from(
  select a.field_id, b.field_id, count(*) as Number from
    (select a.sc_field_id,
            b.sc_field_id
    from scientific_field_project a join scientific_field_project b on(a.project_id = b.project_id )
    where a.sc_field_id < b.sc_field_id
    group by a.sc_field_id, b.sc_field_id))
  join scientific_field  c on (c.sc_field_id = a.sc_field_id)
  join scientific_field  d on (d.sc_field_id = b.sc_field_id)
