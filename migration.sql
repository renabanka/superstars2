create table superstars (
    id int auto_increment,
    talent VARCHAR(255),
    name VARCHAR(45),
    outfit VARCHAR(255),
    primary key(id)
   );

create table happy_places (
    id int auto_increment,
    name VARCHAR(255),
    lat float,
    lon float,
    primary key(id)
    );