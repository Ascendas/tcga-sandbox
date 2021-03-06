drop table L2DCACHE_calendars;
drop table L2DCACHE_fired_triggers;
drop table L2DCACHE_trigger_listeners;
drop table L2DCACHE_blob_triggers;
drop table L2DCACHE_cron_triggers;
drop table L2DCACHE_simple_triggers;
drop table L2DCACHE_triggers;
drop table L2DCACHE_job_listeners;
drop table L2DCACHE_job_details;
drop table L2DCACHE_paused_trigger_grps;
drop table L2DCACHE_locks;
drop table L2DCACHE_scheduler_state;
drop table al_que_calendars;
drop table al_que_fired_triggers;
drop table al_que_trigger_listeners;
drop table al_que_blob_triggers;
drop table al_que_cron_triggers;
drop table al_que_simple_triggers;
drop table al_que_triggers;
drop table al_que_job_listeners;
drop table al_que_job_details;
drop table al_que_paused_trigger_grps;
drop table al_que_locks;
drop table al_que_scheduler_state;


CREATE TABLE L2DCACHE_job_details
  (
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    DESCRIPTION VARCHAR2(250) NULL,
    JOB_CLASS_NAME   VARCHAR2(250) NOT NULL,
    IS_DURABLE VARCHAR2(1) NOT NULL,
    IS_VOLATILE VARCHAR2(1) NOT NULL,
    IS_STATEFUL VARCHAR2(1) NOT NULL,
    REQUESTS_RECOVERY VARCHAR2(1) NOT NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (JOB_NAME,JOB_GROUP)
);
CREATE TABLE L2DCACHE_job_listeners
  (
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    JOB_LISTENER VARCHAR2(200) NOT NULL,
    PRIMARY KEY (JOB_NAME,JOB_GROUP,JOB_LISTENER),
    FOREIGN KEY (JOB_NAME,JOB_GROUP)
    REFERENCES L2DCACHE_JOB_DETAILS(JOB_NAME,JOB_GROUP)
);
CREATE TABLE L2DCACHE_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    IS_VOLATILE VARCHAR2(1) NOT NULL,
    DESCRIPTION VARCHAR2(250) NULL,
    NEXT_FIRE_TIME NUMBER(13) NULL,
    PREV_FIRE_TIME NUMBER(13) NULL,
    PRIORITY NUMBER(13) NULL,
    TRIGGER_STATE VARCHAR2(16) NOT NULL,
    TRIGGER_TYPE VARCHAR2(8) NOT NULL,
    START_TIME NUMBER(13) NOT NULL,
    END_TIME NUMBER(13) NULL,
    CALENDAR_NAME VARCHAR2(200) NULL,
    MISFIRE_INSTR NUMBER(2) NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (JOB_NAME,JOB_GROUP)
    REFERENCES L2DCACHE_JOB_DETAILS(JOB_NAME,JOB_GROUP)
);
CREATE TABLE L2DCACHE_simple_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    REPEAT_COUNT NUMBER(7) NOT NULL,
    REPEAT_INTERVAL NUMBER(12) NOT NULL,
    TIMES_TRIGGERED NUMBER(10) NOT NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES L2DCACHE_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE L2DCACHE_cron_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    CRON_EXPRESSION VARCHAR2(120) NOT NULL,
    TIME_ZONE_ID VARCHAR2(80),
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES L2DCACHE_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE L2DCACHE_blob_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    BLOB_DATA BLOB NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES L2DCACHE_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE L2DCACHE_trigger_listeners
  (
    TRIGGER_NAME  VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    TRIGGER_LISTENER VARCHAR2(200) NOT NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP,TRIGGER_LISTENER),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES L2DCACHE_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE L2DCACHE_calendars
  (
    CALENDAR_NAME  VARCHAR2(200) NOT NULL,
    CALENDAR BLOB NOT NULL,
    PRIMARY KEY (CALENDAR_NAME)
);
CREATE TABLE L2DCACHE_paused_trigger_grps
  (
    TRIGGER_GROUP  VARCHAR2(200) NOT NULL,
    PRIMARY KEY (TRIGGER_GROUP)
);
CREATE TABLE L2DCACHE_fired_triggers
  (
    ENTRY_ID VARCHAR2(95) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    IS_VOLATILE VARCHAR2(1) NOT NULL,
    INSTANCE_NAME VARCHAR2(200) NOT NULL,
    FIRED_TIME NUMBER(13) NOT NULL,
    PRIORITY NUMBER(13) NOT NULL,
    STATE VARCHAR2(16) NOT NULL,
    JOB_NAME VARCHAR2(200) NULL,
    JOB_GROUP VARCHAR2(200) NULL,
    IS_STATEFUL VARCHAR2(1) NULL,
    REQUESTS_RECOVERY VARCHAR2(1) NULL,
    PRIMARY KEY (ENTRY_ID)
);
CREATE TABLE L2DCACHE_scheduler_state
  (
    INSTANCE_NAME VARCHAR2(200) NOT NULL,
    LAST_CHECKIN_TIME NUMBER(13) NOT NULL,
    CHECKIN_INTERVAL NUMBER(13) NOT NULL,
    PRIMARY KEY (INSTANCE_NAME)
);
CREATE TABLE L2DCACHE_locks
  (
    LOCK_NAME  VARCHAR2(40) NOT NULL,
    PRIMARY KEY (LOCK_NAME)
);
INSERT INTO L2DCACHE_locks values('TRIGGER_ACCESS');
INSERT INTO L2DCACHE_locks values('JOB_ACCESS');
INSERT INTO L2DCACHE_locks values('CALENDAR_ACCESS');
INSERT INTO L2DCACHE_locks values('STATE_ACCESS');
INSERT INTO L2DCACHE_locks values('MISFIRE_ACCESS');
commit;
create index idx_L2DCACHE_j_req_recovery on L2DCACHE_job_details(REQUESTS_RECOVERY);
create index idx_L2DCACHE_t_next_fire_time on L2DCACHE_triggers(NEXT_FIRE_TIME);
create index idx_L2DCACHE_t_state on L2DCACHE_triggers(TRIGGER_STATE);
create index idx_L2DCACHE_t_nft_st on L2DCACHE_triggers(NEXT_FIRE_TIME,TRIGGER_STATE);
create index idx_L2DCACHE_t_volatile on L2DCACHE_triggers(IS_VOLATILE);
create index idx_L2DCACHE_ft_trig_name on L2DCACHE_fired_triggers(TRIGGER_NAME);
create index idx_L2DCACHE_ft_trig_group on L2DCACHE_fired_triggers(TRIGGER_GROUP);
create index idx_L2DCACHE_ft_trig_nm_gp on L2DCACHE_fired_triggers(TRIGGER_NAME,TRIGGER_GROUP);
create index idx_L2DCACHE_ft_trig_volatile on L2DCACHE_fired_triggers(IS_VOLATILE);
create index idx_L2DCACHE_ft_trig_inst_name on L2DCACHE_fired_triggers(INSTANCE_NAME);
create index idx_L2DCACHE_ft_job_name on L2DCACHE_fired_triggers(JOB_NAME);
create index idx_L2DCACHE_ft_job_group on L2DCACHE_fired_triggers(JOB_GROUP);
create index idx_L2DCACHE_ft_job_stateful on L2DCACHE_fired_triggers(IS_STATEFUL);
create index idx_L2DCACHE_ft_job_req_recov on L2DCACHE_fired_triggers(REQUESTS_RECOVERY);



CREATE TABLE al_que_job_details
  (
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    DESCRIPTION VARCHAR2(250) NULL,
    JOB_CLASS_NAME   VARCHAR2(250) NOT NULL,
    IS_DURABLE VARCHAR2(1) NOT NULL,
    IS_VOLATILE VARCHAR2(1) NOT NULL,
    IS_STATEFUL VARCHAR2(1) NOT NULL,
    REQUESTS_RECOVERY VARCHAR2(1) NOT NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (JOB_NAME,JOB_GROUP)
);
CREATE TABLE al_que_job_listeners
  (
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    JOB_LISTENER VARCHAR2(200) NOT NULL,
    PRIMARY KEY (JOB_NAME,JOB_GROUP,JOB_LISTENER),
    FOREIGN KEY (JOB_NAME,JOB_GROUP)
    REFERENCES al_que_JOB_DETAILS(JOB_NAME,JOB_GROUP)
);
CREATE TABLE al_que_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    JOB_NAME  VARCHAR2(200) NOT NULL,
    JOB_GROUP VARCHAR2(200) NOT NULL,
    IS_VOLATILE VARCHAR2(1) NOT NULL,
    DESCRIPTION VARCHAR2(250) NULL,
    NEXT_FIRE_TIME NUMBER(13) NULL,
    PREV_FIRE_TIME NUMBER(13) NULL,
    PRIORITY NUMBER(13) NULL,
    TRIGGER_STATE VARCHAR2(16) NOT NULL,
    TRIGGER_TYPE VARCHAR2(8) NOT NULL,
    START_TIME NUMBER(13) NOT NULL,
    END_TIME NUMBER(13) NULL,
    CALENDAR_NAME VARCHAR2(200) NULL,
    MISFIRE_INSTR NUMBER(2) NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (JOB_NAME,JOB_GROUP)
    REFERENCES al_que_JOB_DETAILS(JOB_NAME,JOB_GROUP)
);
CREATE TABLE al_que_simple_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    REPEAT_COUNT NUMBER(7) NOT NULL,
    REPEAT_INTERVAL NUMBER(12) NOT NULL,
    TIMES_TRIGGERED NUMBER(10) NOT NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES al_que_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE al_que_cron_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    CRON_EXPRESSION VARCHAR2(120) NOT NULL,
    TIME_ZONE_ID VARCHAR2(80),
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES al_que_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE al_que_blob_triggers
  (
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    BLOB_DATA BLOB NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES al_que_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE al_que_trigger_listeners
  (
    TRIGGER_NAME  VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    TRIGGER_LISTENER VARCHAR2(200) NOT NULL,
    PRIMARY KEY (TRIGGER_NAME,TRIGGER_GROUP,TRIGGER_LISTENER),
    FOREIGN KEY (TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES al_que_TRIGGERS(TRIGGER_NAME,TRIGGER_GROUP)
);
CREATE TABLE al_que_calendars
  (
    CALENDAR_NAME  VARCHAR2(200) NOT NULL,
    CALENDAR BLOB NOT NULL,
    PRIMARY KEY (CALENDAR_NAME)
);
CREATE TABLE al_que_paused_trigger_grps
  (
    TRIGGER_GROUP  VARCHAR2(200) NOT NULL,
    PRIMARY KEY (TRIGGER_GROUP)
);
CREATE TABLE al_que_fired_triggers
  (
    ENTRY_ID VARCHAR2(95) NOT NULL,
    TRIGGER_NAME VARCHAR2(200) NOT NULL,
    TRIGGER_GROUP VARCHAR2(200) NOT NULL,
    IS_VOLATILE VARCHAR2(1) NOT NULL,
    INSTANCE_NAME VARCHAR2(200) NOT NULL,
    FIRED_TIME NUMBER(13) NOT NULL,
    PRIORITY NUMBER(13) NOT NULL,
    STATE VARCHAR2(16) NOT NULL,
    JOB_NAME VARCHAR2(200) NULL,
    JOB_GROUP VARCHAR2(200) NULL,
    IS_STATEFUL VARCHAR2(1) NULL,
    REQUESTS_RECOVERY VARCHAR2(1) NULL,
    PRIMARY KEY (ENTRY_ID)
);
CREATE TABLE al_que_scheduler_state
  (
    INSTANCE_NAME VARCHAR2(200) NOT NULL,
    LAST_CHECKIN_TIME NUMBER(13) NOT NULL,
    CHECKIN_INTERVAL NUMBER(13) NOT NULL,
    PRIMARY KEY (INSTANCE_NAME)
);
CREATE TABLE al_que_locks
  (
    LOCK_NAME  VARCHAR2(40) NOT NULL,
    PRIMARY KEY (LOCK_NAME)
);
INSERT INTO al_que_locks values('TRIGGER_ACCESS');
INSERT INTO al_que_locks values('JOB_ACCESS');
INSERT INTO al_que_locks values('CALENDAR_ACCESS');
INSERT INTO al_que_locks values('STATE_ACCESS');
INSERT INTO al_que_locks values('MISFIRE_ACCESS');
commit;
create index idx_al_que_j_req_recovery on al_que_job_details(REQUESTS_RECOVERY);
create index idx_al_que_t_next_fire_time on al_que_triggers(NEXT_FIRE_TIME);
create index idx_al_que_t_state on al_que_triggers(TRIGGER_STATE);
create index idx_al_que_t_nft_st on al_que_triggers(NEXT_FIRE_TIME,TRIGGER_STATE);
create index idx_al_que_t_volatile on al_que_triggers(IS_VOLATILE);
create index idx_al_que_ft_trig_name on al_que_fired_triggers(TRIGGER_NAME);
create index idx_al_que_ft_trig_group on al_que_fired_triggers(TRIGGER_GROUP);
create index idx_al_que_ft_trig_nm_gp on al_que_fired_triggers(TRIGGER_NAME,TRIGGER_GROUP);
create index idx_al_que_ft_trig_volatile on al_que_fired_triggers(IS_VOLATILE);
create index idx_al_que_ft_trig_inst_nm on al_que_fired_triggers(INSTANCE_NAME);
create index idx_al_que_ft_job_name on al_que_fired_triggers(JOB_NAME);
create index idx_al_que_ft_job_group on al_que_fired_triggers(JOB_GROUP);
create index idx_al_que_ft_job_stateful on al_que_fired_triggers(IS_STATEFUL);
create index idx_al_que_ft_job_req_recov on al_que_fired_triggers(REQUESTS_RECOVERY);

grant all on AL_QUE_BLOB_TRIGGERS to qrtzmaint;
grant all on AL_QUE_CALENDARS to qrtzmaint;
grant all on AL_QUE_CRON_TRIGGERS to qrtzmaint;
grant all on AL_QUE_FIRED_TRIGGERS to qrtzmaint;
grant all on AL_QUE_JOB_DETAILS to qrtzmaint;
grant all on AL_QUE_JOB_LISTENERS to qrtzmaint;
grant all on AL_QUE_LOCKS to qrtzmaint;
grant all on AL_QUE_PAUSED_TRIGGER_GRPS to qrtzmaint;
grant all on AL_QUE_SCHEDULER_STATE to qrtzmaint;
grant all on AL_QUE_SIMPLE_TRIGGERS to qrtzmaint;
grant all on AL_QUE_TRIGGERS to qrtzmaint;
grant all on AL_QUE_TRIGGER_LISTENERS to qrtzmaint;
grant all on L2DCACHE_BLOB_TRIGGERS to qrtzmaint;
grant all on L2DCACHE_CALENDARS to qrtzmaint;
grant all on L2DCACHE_CRON_TRIGGERS to qrtzmaint;
grant all on L2DCACHE_FIRED_TRIGGERS to qrtzmaint;
grant all on L2DCACHE_JOB_DETAILS to qrtzmaint;
grant all on L2DCACHE_JOB_LISTENERS to qrtzmaint;
grant all on L2DCACHE_LOCKS to qrtzmaint;
grant all on L2DCACHE_PAUSED_TRIGGER_GRPS to qrtzmaint;
grant all on L2DCACHE_SCHEDULER_STATE to qrtzmaint;
grant all on L2DCACHE_SIMPLE_TRIGGERS to qrtzmaint;
grant all on L2DCACHE_TRIGGERS to qrtzmaint;
grant all on L2DCACHE_TRIGGER_LISTENERS to qrtzmaint;



purge recyclebin;


