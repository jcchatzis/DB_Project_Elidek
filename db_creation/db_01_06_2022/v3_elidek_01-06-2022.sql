create database DB_Project_ELIDEK;

/* add project_id */ 

create table Project(
    project_id int not null,        
	project_title varchar(255) not null,
    description text not null,
    budget int not null,
    start_date date not null,
    end_date date,
    duration int,
    primary key (project_id)
    );
    /*create table program */
CREATE TABLE program(
    program_name varchar(255),
    program_id int not null,
    PRIMARY KEY (program_id)
    );
    
    /*create table Project_donation */

create table Project_donation(
	project_id int not null,
    program_id int not null,
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    CONSTRAINT PK_project_donation PRIMARY KEY(project_id,program_id)

    );
    /*create table administration */

CREATE TABLE administration(
    admin_id int not null,
	admin_name varchar(255) not null,
    PRIMARY KEY (admin_id)
    );

    /*create table deliverable */


create table deliverable(
    deliverable_title varchar(300) not null,
    unique (deliverable_title),
    deliverable_date date not null, project_id int not null,
    deliverable_summary text not null,
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    CONSTRAINT PK_deliverable PRIMARY KEY(deliverable_date,project_id)
    );

    /*create table organisation */
 

create table organisation(
    org_id char(20) not null ,
    org_name varchar(255) not null,
    org_street varchar(255) not null,
    org_number varchar(10) not null,
    org_postal_code char(5) not null,
    org_city varchar(255) not null,
    category varchar(300) not null,
    estimate_budget float,
    private_budget float,
    private_capital float,
    primary key (org_id)
    );

    /*create table employer_manages_project */

create table employer_manages_project (
    employer_id int not null,
    org_id char(20) not null,
    employer_name varchar(255) not null,
    FOREIGN KEY (org_id) REFERENCES organisation(org_id),
    constraint PK_manages_project primary key(employer_id,org_id)
    );

    /*create table program_belongs_to_admin */


CREATE TABLE program_belongs_to_admin(
    admin_id int not null,
    program_id int not null,
    FOREIGN KEY (admin_id) REFERENCES administration(admin_id), 
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    CONSTRAINT PK_program_belongs PRIMARY KEY(admin_id,program_id)
    );

    /*create table project_managed_by_org */

create table project_managed_by_org(
    org_id char(20) not null,
    project_id int not null,
    FOREIGN KEY (org_id) REFERENCES organisation(org_id),   
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    constraint PK_project_man_org primary key (org_id,project_id)
    );

    /*create table researcher */


CREATE TABLE researcher(
    researcher_id int not null,
    researcher_first_name varchar(255) not null,
    researcher_last_name varchar(255)  not null,
    researcher_birth_date date,
    researcher_sex char(2),
    primary key (researcher_id)
    );
/*create index for researchers name*/

create index index_name
on researcher(researcher_first_name,researcher_last_name);

/*
remove table supervisor and merge it in res_works_on_project as a bool attribute (if =1 is_supervisor else not)
*/

    /*create table res_works_on_project */

create table res_works_on_project(
    researcher_id int not null,
    project_id int not null,
    is_supervisor boolean,
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
    CONSTRAINT PK_work_researcher PRIMARY KEY(researcher_id,project_id) /*,
    constraint check_supervisor check (is_supervisor in(true,false)) */
    );

    /*create table researcher_works_org */


create table researcher_works_org(
    org_id char(20) not null,
    researcher_id int not null,
    start_date_of_work date not null,
    end_date_of_work date,
    FOREIGN KEY (org_id) REFERENCES organisation(org_id),
    FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
    constraint pk_res_works_org primary key (researcher_id,org_id)
    );


    /*create table review */

create table review(
    researcher_id int not null,
    project_id int not null,
    grade int not null,
    review_date date not null,
    FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    constraint pk_review primary key(researcher_id,project_id)
    );

    /*create table scientific_field */

CREATE TABLE scientific_field(
    sc_field_id int not null,
	name_of_sc_f varchar(255) not null,
    PRIMARY KEY (sc_field_id)
    );

    /*create table scientific_field_project */


CREATE TABLE scientific_field_project(
    sc_field_id int not null,
    project_id int not null,
    FOREIGN KEY (sc_field_id) REFERENCES scientific_field(sc_field_id), 
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    CONSTRAINT PK_scientific_project PRIMARY KEY(project_id,sc_field_id)
    );
    
/* table research_supervisor not needed and merged as a boolean attribute to reesearcher */

/*
create table research_supervisor(
	researcher_id int not null,
	project_id int not null,
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
	CONSTRAINT PK_supervisor PRIMARY KEY(researcher_id,project_id)
    );
    */

    /*create table telephones */
create table telephones(
	telephone varchar(20) not null,
    org_id char(20) not null,
	FOREIGN KEY (org_id) REFERENCES organisation(org_id)

    );
/*create index for telephones as they dont have a PK so foreign key org_id index form */

create index index_phone
on telephones (org_id);
    

/*table manager merged in table manages project */
/*
create table manager(
	employer_name varchar(255) not null,
    primary key (employer_name)
    );
    */


    

    
    
    

