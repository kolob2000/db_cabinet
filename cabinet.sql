drop database if exists school_cabinets;
create database school_cabinets;
use school_cabinets;

drop table if exists cabinet;
create table cabinets
(
    id            serial,
    subject       varchar(50),
    number        tinyint,
    desk_quantity tinyint

);

drop table if exists pupils;
create table pupils
(
    id       serial,
    name     varchar(255),
    birth_at timestamp,
    class    varchar(50)
);

drop table if exists pivot_table;
create table pivot_table
(
    id          serial,
    pupil_id    bigint unsigned not null,
    cabinet_id  bigint unsigned not null,
    foreign key (pupil_id) references pupils (id),
    foreign key (cabinet_id) references cabinets (id),
    desk        tinyint,
    row_         tinyint,
    variant     enum ('1', '2') not null,
    started_at  timestamp       not null default current_timestamp,
    finished_at timestamp       not null
)


