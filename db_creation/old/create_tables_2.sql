create table Project(
	project_title varchar(255) not null,
    description text not null,
    budget int not null,
    start_date date not null,
    end_date date,
    duration int,
    primary key (project_title)
    );
    
create table Project_donation(
	project_title varchar(255) not null,
    primary key (project_title),
	program_name varchar(255)
    );

CREATE TABLE administration(
	admin_name varchar(255) not null,
    admin_id int not null,
    PRIMARY KEY (admin_id)
    );


CREATE TABLE program(
	program_name varchar(255),
    PRIMARY KEY (program_name)
    );
    
CREATE TABLE program_belongs_to_admin(
    admin_id int not null,
	progam_name varchar(255),
    FOREIGN KEY (admin_id) REFERENCES administration(admin_id), 
    FOREIGN KEY (progam_name) REFERENCES program(program_name),
    CONSTRAINT PK_program_belongs PRIMARY KEY(admin_id,progam_name)
);

CREATE TABLE scientific_field(
	name_of_sc_f varchar(255) not null,
    PRIMARY KEY (name_of_sc_f)
    );
    
CREATE TABLE scientific_field_project(
	name_of_sc_f varchar(255),
    project_title varchar(255),
    FOREIGN KEY (name_of_sc_f) REFERENCES scientific_field(name_of_sc_f), 
    FOREIGN KEY (project_title) REFERENCES Project(project_title),
    CONSTRAINT PK_scientific_project PRIMARY KEY(project_title,name_of_sc_f)
    );
    
CREATE TABLE researcher(
	researcher_id int not null,
    unique(researcher_id),
	researcher_first_name varchar(255) not null,
    researcher_last_name varchar(255)  not null,
    researcher_birth_date date,
    researcher_sex char(2),
	primary key (researcher_id)
    );
create index index_name
on researcher(researcher_first_name,researcher_last_name);


create table review(
	researcher_id int not null,
	project_title varchar(255) not null,
    grade int not null,
    review_date date not null,
    FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
    FOREIGN KEY (project_title) REFERENCES Project(project_title),
    constraint pk_review primary key(researcher_id,project_title)
    );
    
create table res_works_on_project(
	researcher_id int not null,
    project_title varchar(255) not null,
    FOREIGN KEY (project_title) REFERENCES Project(project_title),
    FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
    CONSTRAINT PK_work_researcher PRIMARY KEY(researcher_id,project_title)
    );
    
create table research_supervisor(
	researcher_id int not null,
	project_title varchar(255) not null,
    FOREIGN KEY (project_title) REFERENCES Project(project_title),
    FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
	CONSTRAINT PK_supervisor PRIMARY KEY(researcher_id,project_title)
    );

create table deliverable(
	deliverable_title varchar(300) not null,
    unique (deliverable_title),
	project_title varchar(255) not null,
    FOREIGN KEY (project_title) REFERENCES Project(project_title),
	deliverable_summary text ,
    deliverable_date date not null,
	CONSTRAINT PK_deliverable PRIMARY KEY(deliverable_title,project_title)
    );

create table organisation(
	abbreviation char(20) not null ,
    org_name varchar(255) not null,
    org_street varchar(255) not null,
    org_number varchar(10) not null,
    org_postal_code char(5) not null,
    org_city varchar(255) not null,
    category varchar(300) not null,
    estimate_budget float,
    private_budget float,
    private_capital float,
    primary key (abbreviation)
    );

create table telephones(
	telephone varchar(20) not null,
    abbreviation char(20) not null,
	FOREIGN KEY (abbreviation) REFERENCES organisation(abbreviation),
    primary key (telephone)
    );
create index index_phone
on telephones (abbreviation);
    
create table researcher_works_org(
	abbreviation char(20) not null,
	start_date_of_work date not null,
	end_date_of_work date,
    researcher_id int not null,
    FOREIGN KEY (abbreviation) REFERENCES organisation(abbreviation),
	FOREIGN KEY (researcher_id) REFERENCES researcher(researcher_id), 
    primary key (researcher_id)
    );

create table manager(
	employer_name varchar(255) not null,
    primary key (employer_name)
    );

create table employer_manages_project (
	employer_name varchar(255) not null,
	FOREIGN KEY (employer_name) REFERENCES manager(employer_name),
    abbreviation char(20) not null,
	FOREIGN KEY (abbreviation) REFERENCES organisation(abbreviation),
    constraint PK_manages_project primary key(employer_name,abbreviation)
    );
    
create table project_managed_by_org(
	abbreviation char(20) not null,
	FOREIGN KEY (abbreviation) REFERENCES organisation(abbreviation),	
    project_title varchar(255) not null,
    FOREIGN KEY (project_title) REFERENCES Project(project_title),
    constraint PK_project_man_org primary key (abbreviation,project_title)
    );
    
    
    
