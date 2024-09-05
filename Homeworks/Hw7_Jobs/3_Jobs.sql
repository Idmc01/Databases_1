BEGIN
DBMS_SCHEDULER.create_program(
program_name => 'procInsertPerson',
program_type => 'STORED_PROCEDURE',
program_action => 'begin insertPerson(:pcFirstName,:pcSecondName, :pcFirstSurname , :pcSeconSurname , :pcBirthDate), END;',
number_of_arguments => 5,
enabled => TRUE
);
DBMS_SCHEDULER.define_program_argument(
program_name => 'procInsertPerson',
argument_position => 1,
argument_name => 'pcFirstName',
argument_type => 'VARCHAR2'
);
DBMS_SCHEDULER.define_program_argument(
program_name => 'procInsertPerson',
argument_position => 2,
argument_name => 'pcSecondName',
argument_type => 'VARCHAR2'
);
DBMS_SCHEDULER.define_program_argument(
program_name => 'procInsertPerson',
argument_position => 3,
argument_name => 'pcFirstSurname',
argument_type => 'VARCHAR2'
);
DBMS_SCHEDULER.define_program_argument(
program_name => 'procInsertPerson',
argument_position => 4,
argument_name => 'pcSeconSurname',
argument_type => 'VARCHAR2'
);
DBMS_SCHEDULER.define_program_argument(
program_name => 'procInsertPerson',
argument_position => 5,
argument_name => 'pcBirthDate',
argument_type => 'DATE'
);
END;
BEGIN
DBMS_SCHEDULER.create_job(
    job_name => 'A01',
    program_name => 'procInsertPerson',
    start_date => SYSTIMESTAMP,
    repeat_interval => 'freq=secondly',
    end_date => NULL,
    enabled => TRUE,
    comments => 'Mi primer job'
);
DBMS_SCHEDULER.reset_job_argument_value('A01',1, 'a');
DBMS_SCHEDULER.reset_job_argument_value('A01',2, 'b');
DBMS_SCHEDULER.reset_job_argument_value('A01',3, 'c');
DBMS_SCHEDULER.reset_job_argument_value('A01',4, 'd');
DBMS_SCHEDULER.reset_job_argument_value('A01',5, TO_DATE('1985-06-12','YYYY-MM-DD'));
END;

begin
dbms_scheduler.run_job('A01',TRUE);
end;
Select * from create_job;

select * from DBA_SCHEDULER_JOB_LOG
where owner='ge'
and job_name = 'A01'