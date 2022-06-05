create database DB_Project_ELIDEK;
/*drop database DB_Project_ELIDEK;*/
/* add project_id */ 


/*create table organisation */

CREATE TABLE organisation (
    org_id char(20) not null,
    org_name varchar(255) not null,
    org_street varchar(255) not null,
    org_number varchar(10) not null,
    org_postal_code int unsigned not null,
    org_city varchar(255) not null,
    category varchar(30) not null,
    estimate_budget float,
    private_budget float,
    private_capital float,
    CONSTRAINT PK_ORGANISATION PRIMARY KEY (org_id),
    CONSTRAINT UN_ORGANISATION UNIQUE (org_name),
    CONSTRAINT CHK_ORG_CATEGORY CHECK (category in ('UNIVERSITY', 'RESEARCH CENTER', 'COMPANY'))
);
/*ALTER TABLE organisation
ADD  CONSTRAINT CHK_ORG_CATEGORY CHECK (category in ('UNIVERSITY', 'RESEARCH CENTER', 'COMPANY'));
*/

/* for personal use drop trigger */
/*
DROP TRIGGER organisation_ins;
*/

DELIMITER //
CREATE TRIGGER organisation_ins
    BEFORE INSERT
    ON organisation FOR EACH ROW
BEGIN
  declare rowcount int;
   if (
        (new.category = 'UNIVERSITY' and not((new.private_budget is null or new.private_budget = 0) and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'RESEARCH CENTER' and not(new.private_budget is not null and new.private_budget > 0 and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'COMPANY' and not((new.private_budget is null or new.private_budget = 0) and new.private_capital is not null and new.private_capital > 0 and (new.estimate_budget is null or new.estimate_budget = 0)))
     )
  then
    signal sqlstate '45000' set message_text = 'Type(s) of budget do not match the category';
  end if;
END //

/* for personal use drop trigger */
/*
DROP TRIGGER organisation_upd;
*/

DELIMITER //
CREATE TRIGGER organisation_upd
    BEFORE UPDATE
    ON organisation FOR EACH ROW
BEGIN
  if (
        (new.category = 'UNIVERSITY' and not((new.private_budget is null or new.private_budget = 0) and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'RESEARCH CENTER' and not(new.private_budget is not null and new.private_budget > 0 and (new.private_capital is null or new.private_capital = 0) and new.estimate_budget is not null and new.estimate_budget > 0)) or
        (new.category = 'COMPANY' and not((new.private_budget is null or new.private_budget = 0) and new.private_capital is not null and new.private_capital > 0 and (new.estimate_budget is null or new.estimate_budget = 0)))
     )
  then
    signal sqlstate '45000' set message_text = 'Type(s) of budget do not match the category';
  end if;
END; //

CREATE TABLE Project(
    project_id int unsigned not null AUTO_INCREMENT, 
    org_id char(20) null,       
	project_title varchar(255) not null,
    description text not null,
    budget int unsigned not null,
    start_date date not null,
    date_end date not null,
    duration int unsigned not null,
    CONSTRAINT PK_PROJECT PRIMARY KEY (project_id),
    CONSTRAINT UN_PROJECT_TILE UNIQUE (project_title),
    CONSTRAINT FK_ORG_ID_OF_PROJECT FOREIGN KEY (org_id) REFERENCES organisation(org_id) ON DELETE SET NULL,
    CONSTRAINT CHK_BUDGET CHECK (budget >= 100000 and budget <= 1000000),
    CONSTRAINT CHK_date_end CHECK (date_end is null or (date_end >= start_date + INTERVAL 1 YEAR and date_end <= start_date + INTERVAL 4 YEAR))
    );
    
/*
ALTER TABLE Project
ADD CONSTRAINT UN_PROJECT_TILE UNIQUE (project_title),
ADD CONSTRAINT CHK_BUDGET CHECK (budget >= 100000 and budget <= 1000000),
ADD CONSTRAINT CHK_date_end CHECK (date_end is null or (date_end >= start_date + INTERVAL 1 YEAR and date_end <= start_date + INTERVAL 4 YEAR));
*/

CREATE INDEX IDX_PROJECT_START_DATE ON project (start_date);
CREATE INDEX IDX_PROJECT_DURATION ON project (duration);
CREATE TRIGGER Project_ins BEFORE INSERT ON Project
       FOR EACH ROW SET new.duration = ceil(datediff(new.date_end, new.start_date)/365);
CREATE TRIGGER Project_upd BEFORE UPDATE ON Project
       FOR EACH ROW SET new.duration = ceil(datediff(new.date_end, new.start_date)/365)

    /*create table program */
CREATE TABLE program(
    program_id int unsigned not null AUTO_INCREMENT,
    program_name varchar(255) not null,
    CONSTRAINT PK_PROGRAM PRIMARY KEY (program_id),
    CONSTRAINT UN_PROGRAM_NAME UNIQUE (program_name)
);

    /*create table Project_donation */
CREATE TABLE Project_donation(
	project_id int unsigned not null,
    program_id int unsigned not null,
    CONSTRAINT PK_PROJECT_DONATION PRIMARY KEY(project_id, program_id),
    CONSTRAINT FK_PROJDON_PROJECT_ID FOREIGN KEY (project_id) REFERENCES Project(project_id),
    CONSTRAINT FK_PROJDON_PROGRAM_ID FOREIGN KEY (program_id) REFERENCES program(program_id)
);
    /*create table administration */

CREATE TABLE administration(
    admin_id int unsigned not null AUTO_INCREMENT,
	admin_name varchar(255) not null,
    CONSTRAINT PK_ADMINISTRATION PRIMARY KEY (admin_id),
    CONSTRAINT UN_ADMINISTRATION UNIQUE (admin_name)
);
/*create table deliverable */

CREATE TABLE deliverable(
    deliverable_title varchar(300) not null,
    deliverable_date date not null, 
    project_id int unsigned not null,
    deliverable_summary text not null,
    CONSTRAINT PK_DELIVERABLE PRIMARY KEY (deliverable_date, project_id),
    CONSTRAINT UN_DELIVERABLE UNIQUE (deliverable_title),
    CONSTRAINT FK_DELIV_PROJECT_ID FOREIGN KEY (project_id) REFERENCES Project(project_id)
);


/* for personal use drop trigger */
/*
DROP TRIGGER deliverable_ins;
*/

DELIMITER //
CREATE TRIGGER deliverable_ins
    BEFORE INSERT
    ON deliverable FOR EACH ROW
BEGIN
  declare rowcount int;
  /* query for deliverable_date check */
  select count(1)
  into rowcount
  from project
  where project_id = new.project_id and
        new.deliverable_date >= start_date and
        new.deliverable_date <= date_end;
  if (rowcount = 0)
  then
    signal sqlstate '45000' set message_text = 'Deliverable dtae must be between start date and end date of project';
  end if;
END; //

/* for personal use drop trigger */
/*
DROP TRIGGER deliverable_upd;
*/

DELIMITER //
CREATE TRIGGER deliverable_upd
    BEFORE UPDATE
    ON deliverable FOR EACH ROW
BEGIN
  declare rowcount int;
  /* query for deliverable_date check */
  select count(1)
  into rowcount
  from project
  where project_id = new.project_id and
        new.deliverable_date >= start_date and
        new.deliverable_date <= date_end;
  if (rowcount = 0)
  then
    signal sqlstate '45000' set message_text = 'Deliverable dtae must be between start date and end date of project';
  end if;
END; //



    /*create table employer*/

CREATE TABLE employer(
    employer_id int unsigned not null AUTO_INCREMENT,
    employer_name varchar(255) not null,
    CONSTRAINT PK_EMPLOYER PRIMARY KEY (employer_id),
    CONSTRAINT UN_EMPLOYER_MANAGERS_PROJECT UNIQUE (employer_name)
);

    /*create table employer_manages_project */
CREATE TABLE employer_manages_project (
    employer_id int unsigned not null,
    project_id int unsigned not null,
    CONSTRAINT PK_EMPLOYER_MANAGERS_PROJECT PRIMARY KEY (employer_id, project_id),
    CONSTRAINT FK_EMPLOYER_ID FOREIGN KEY (employer_id) REFERENCES employer(employer_id),
    CONSTRAINT FK_EMP_MAN_PROJECT_ID FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

/*create table program_belongs_to_admin */


CREATE TABLE program_belongs_to_admin(
    admin_id int unsigned not null,
    program_id int unsigned not null,
    CONSTRAINT PK_PROGRAM_BELONGS_TO_ADMIN PRIMARY KEY (admin_id, program_id),
    CONSTRAINT FK_PRO_BEL_TO_ADMIN_ADMIN_ID FOREIGN KEY (admin_id) REFERENCES administration(admin_id), 
    CONSTRAINT FK_PRO_BEL_TO_ADMIN_PROGRAM_ID FOREIGN KEY (program_id) REFERENCES program(program_id)
);

/*create table project_managed_by_org */
/*
create table project_managed_by_org(
    org_id char(20) not null,
    project_id int unsigned not null,
    CONSTRAINT PK_PROJECT_MANAGED_BY_ORG PRIMARY KEY (org_id, project_id),
    CONSTRAINT FK_PRO_MAN_BY_ORG_ORG_ID FOREIGN KEY (org_id) REFERENCES organisation(org_id),   
    CONSTRAINT FK_PRO_MAN_BY_ORG_PROJECT_ID FOREIGN KEY (project_id) REFERENCES Project(project_id)
);
*/

/*create table researcher */

CREATE TABLE researcher (
    researcher_id int unsigned not null AUTO_INCREMENT,
    researcher_first_name varchar(255) not null,
    researcher_last_name varchar(255)  not null,
    researcher_birth_date date not null,
    researcher_sex char(1) not null,
    CONSTRAINT PK_RESEARCHER PRIMARY KEY (researcher_id),
    CONSTRAINT CHK_RESEARCHER_SEX CHECK (researcher_sex in ('M', 'F', 'O'))
);
/*
ALTER TABLE researcher
ADD CONSTRAINT CHK_RESEARCHER_SEX CHECK (researcher_sex in ('M', 'F', 'O'));
*/
/*create index for researchers name*/

create index index_name
on researcher(researcher_first_name,researcher_last_name);

/*
remove table supervisor and merge it in res_works_on_project as a bool attribute (if =1 is_supervisor else not)
*/

/*create table res_works_on_project */

CREATE TABLE res_works_on_project (
    researcher_id int unsigned not null,
    project_id int unsigned not null,
    is_supervisor boolean not null,
    CONSTRAINT PK_RES_WORKS_ON_PROJECT PRIMARY KEY (researcher_id, project_id),
    CONSTRAINT FK_RES_WORKS_ON_PRO_PROJECT_ID FOREIGN KEY (project_id) REFERENCES Project(project_id),
    CONSTRAINT FK_RES_WORKS_ON_PRO_RESEARCHER_ID FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id)
);
/*
DROP TRIGGER res_works_on_project_ins;
*/

DELIMITER //
CREATE TRIGGER res_works_on_project_ins
    BEFORE INSERT
    ON res_works_on_project FOR EACH ROW
BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from review
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Researcher is a reviewer on this project, cannot work.';
  end if;
END; //

/*
DROP TRIGGER res_works_on_project_upd;
*/

DELIMITER //
CREATE TRIGGER res_works_on_project_upd
    BEFORE UPDATE
    ON res_works_on_project FOR EACH ROW
BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from review
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Researcher is a reviewer on this project, cannot work.';
  end if;
END; //

/*create table researcher_works_org */

CREATE TABLE researcher_works_org (
    org_id char(20) not null,
    researcher_id int unsigned not null,
    start_date_of_work date not null,
    date_end_of_work date,
    CONSTRAINT PK_RESEARCHER_WORKS_ORG PRIMARY KEY (researcher_id, org_id),
    CONSTRAINT FK_RES_WORKS_ORG_ORG_ID FOREIGN KEY (org_id) REFERENCES organisation(org_id),
    CONSTRAINT FK_RES_WORKS_ORG_RESEARCHER_ID FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id),
    CONSTRAINT CHK_date_end_WORK CHECK (date_end_of_work is null or date_end_of_work >= start_date_of_work)
);
/*
ALTER TABLE researcher_works_org
ADD CONSTRAINT CHK_date_end_WORK CHECK (date_end_of_work is null or date_end_of_work >= start_date_of_work);
*/
/*create table review */
CREATE TABLE review(
    researcher_id int unsigned not null,
    project_id int unsigned not null,
    grade int unsigned not null,
    review_date date not null,
    CONSTRAINT PK_REVIEW PRIMARY KEY (researcher_id, project_id),
    CONSTRAINT FK_REV_RESEARCHER_ID FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
    CONSTRAINT FK_REV_PROJECT_ID FOREIGN KEY (project_id) REFERENCES Project(project_id),
    CONSTRAINT CHK_GRADE CHECK (grade >= 0 AND grade <= 10)
);
/*
ALTER TABLE review 
ADD CONSTRAINT CHK_GRADE CHECK (grade >= 0 AND grade <= 10);
*/
/*
DROP TRIGGER review_ins;
*/
DELIMITER //

CREATE TRIGGER review_ins
    BEFORE INSERT
    ON review FOR EACH ROW
BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from res_works_on_project
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Reviewer working on this project, cannot review.';
  end if;
END; //
/*
DROP TRIGGER review_upd;
*/

DELIMITER //
CREATE TRIGGER review_upd
    BEFORE UPDATE
    ON review FOR EACH ROW
BEGIN
  declare rowcount int;
  select count(1)
  into rowcount
  from res_works_on_project
  where researcher_id = new .researcher_id and
        project_id = new.project_id;
  if (rowcount = 1)
  then
    signal sqlstate '45000' set message_text = 'Error. Reviewer working on this project, cannot review.';
  end if;
END; //

/*create table scientific_field */

CREATE TABLE scientific_field (
    sc_field_id int unsigned not null AUTO_INCREMENT,
	name_of_sc_f varchar(255) not null,
    CONSTRAINT PK_SCIENTIFIC_FIELD PRIMARY KEY (sc_field_id),
    CONSTRAINT UN_SCIENTIFIC_FIELD UNIQUE (name_of_sc_f)
);

/*create table scientific_field_project */

CREATE TABLE scientific_field_project (
    sc_field_id int unsigned not null,
    project_id int unsigned not null,
    CONSTRAINT PK_SCIENTIFIC_FIELD_PROJECT PRIMARY KEY (project_id, sc_field_id),
    CONSTRAINT FK_SCI_FIELD_PRO_SC_FIELD_ID FOREIGN KEY (sc_field_id) REFERENCES scientific_field(sc_field_id), 
    CONSTRAINT FK_SCI_FIELD_PRO_PROJECT_ID FOREIGN KEY (project_id) REFERENCES Project(project_id)
);
    
/* table research_supervisor not needed and merged as a boolean attribute to reesearcher */
/*create table telephones */
CREATE TABLE telephones(
	telephone varchar(20) not null,
    org_id char(20) not null,
	CONSTRAINT FK_TELEPHONES FOREIGN KEY (org_id) REFERENCES organisation(org_id)
);
/*create index for telephones as they dont have a PK so foreign key org_id index form */

CREATE INDEX IDX_TELEPHONES_ORG_ID ON telephones (org_id);

/*table manager merged in table manages project */
