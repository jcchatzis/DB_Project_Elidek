

insert into administration (admin_name, admin_id) values ('DEPARTMENT-A', 1);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-B', 2);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-C', 3);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-D', 4);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-E', 5);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-F', 6);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-G', 7);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-H', 8);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-I', 9);
insert into administration (admin_name, admin_id) values ('DEPARTMENT-K', 10);



insert into program (program_id, program_name) values (1, 'PROGRAM-A');
insert into program (program_id, program_name) values (2, 'PROGRAM-B');
insert into program (program_id, program_name) values (3, 'PROGRAM-C');
insert into program (program_id, program_name) values (4, 'PROGRAM-D');
insert into program (program_id, program_name) values (5, 'PROGRAM-E');
insert into program (program_id, program_name) values (6, 'PROGRAM-F');
insert into program (program_id, program_name) values (7, 'PROGRAM-G');
insert into program (program_id, program_name) values (8, 'PROGRAM-H');
insert into program (program_id, program_name) values (9, 'PROGRAM-I');
insert into program (program_id, program_name) values (10, 'PROGRAM-K');

insert into program_belongs_to_admin (admin_id, program_id) value(1, 2);
insert into program_belongs_to_admin (admin_id, program_id) value(2, 5);
insert into program_belongs_to_admin (admin_id, program_id) value(3, 7);
insert into program_belongs_to_admin (admin_id, program_id) value(4, 8);
insert into program_belongs_to_admin (admin_id, program_id) value(5, 9);
insert into program_belongs_to_admin (admin_id, program_id) value(6, 10);
insert into program_belongs_to_admin (admin_id, program_id) value(7, 1);
insert into program_belongs_to_admin (admin_id, program_id) value(8, 3);
insert into program_belongs_to_admin (admin_id, program_id) value(9, 6);
insert into program_belongs_to_admin (admin_id, program_id) value(10, 4);