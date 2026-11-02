create table if not exists app_heartbeat(
    id SERIAL primary key,
    status varchar(20) not null,
    created_at timestamp with time zone default current_timestamp
);
insert into app_heartbeat(status) values('dev sync is running');