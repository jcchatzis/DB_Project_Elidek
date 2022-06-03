

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
insert into program (program_id, program_name) values (11, 'PROGRAM-L');
insert into program (program_id, program_name) values (12, 'PROGRAM-M');
insert into program (program_id, program_name) values (13, 'PROGRAM-N');
insert into program (program_id, program_name) values (14, 'PROGRAM-O');
insert into program (program_id, program_name) values (15, 'PROGRAM-P');
insert into program (program_id, program_name) values (16, 'PROGRAM-Q');
insert into program (program_id, program_name) values (17, 'PROGRAM-R');
insert into program (program_id, program_name) values (18, 'PROGRAM-S');
insert into program (program_id, program_name) values (19, 'PROGRAM-T');
insert into program (program_id, program_name) values (20, 'PROGRAM-U');
insert into program (program_id, program_name) values (21, 'PROGRAM-V');
insert into program (program_id, program_name) values (22, 'PROGRAM-W');
insert into program (program_id, program_name) values (23, 'PROGRAM-X');
insert into program (program_id, program_name) values (24, 'PROGRAM-Y');
insert into program (program_id, program_name) values (25, 'PROGRAM-Z');
insert into program (program_id, program_name) values (26, 'PROGRAM-A1');
insert into program (program_id, program_name) values (27, 'PROGRAM-B1');
insert into program (program_id, program_name) values (28, 'PROGRAM-C1');
insert into program (program_id, program_name) values (29, 'PROGRAM-D1');
insert into program (program_id, program_name) values (30, 'PROGRAM-E1');


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

insert into program_belongs_to_admin (admin_id, program_id) value(1, 12);
insert into program_belongs_to_admin (admin_id, program_id) value(1, 25);
insert into program_belongs_to_admin (admin_id, program_id) value(3, 17);
insert into program_belongs_to_admin (admin_id, program_id) value(4, 18);
insert into program_belongs_to_admin (admin_id, program_id) value(6, 29);
insert into program_belongs_to_admin (admin_id, program_id) value(6, 20);
insert into program_belongs_to_admin (admin_id, program_id) value(7, 21);
insert into program_belongs_to_admin (admin_id, program_id) value(8, 30);
insert into program_belongs_to_admin (admin_id, program_id) value(9, 16);
insert into program_belongs_to_admin (admin_id, program_id) value(9, 24);

insert into program_belongs_to_admin (admin_id, program_id) value(1, 22);
insert into program_belongs_to_admin (admin_id, program_id) value(2, 15);
insert into program_belongs_to_admin (admin_id, program_id) value(3, 27);
insert into program_belongs_to_admin (admin_id, program_id) value(4, 28);
insert into program_belongs_to_admin (admin_id, program_id) value(5, 19);
insert into program_belongs_to_admin (admin_id, program_id) value(6, 11);
insert into program_belongs_to_admin (admin_id, program_id) value(7, 23);
insert into program_belongs_to_admin (admin_id, program_id) value(8, 13);
insert into program_belongs_to_admin (admin_id, program_id) value(9, 26);
insert into program_belongs_to_admin (admin_id, program_id) value(10, 14);