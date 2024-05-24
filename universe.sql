CREATE DATABASE universe;

CREATE TABLE galaxy (
    galaxy_id serial primary key, 
    name varchar unique not null, 
    stars_in_billion int,  
    size_kpc int not null
);

INSERT INTO galaxy (
    name,
    stars_in_billion,
    size_kpc
) VALUES 
    ('Milky Way', 400, 26),
    ('Andromeda', 1000, 46),
    ('Antennae Galaxies', 10, 1), 
    ('Backward Galaxy', 5, 1),
    ('Bear Paw Galaxy', 30, 1),   
    ('Black Eye Galaxy', 100, 16);

CREATE TABLE star (
    star_id serial primary key,
    galaxy_id int references galaxy(galaxy_id), 
    name varchar unique not null,
    type_of_star text not null, 
    weight numeric(10,3)
);

INSERT INTO star (
    name,
    galaxy_id,
    type_of_star,
    weight
) VALUES 
    ('The Sun', 1, 'Yellow dwarf', 1.989),
    ('A', 2, 'Yellow dwarf', 2.030),
    ('B', 2, 'Red giant', 2.100),
    ('C', 2, 'Blue supergiant', 3.200),
    ('D', 2, 'White dwarf', 0.900),
    ('E', 2, 'Neutron star', 1.400);


CREATE TABLE planet (
    planet_id serial primary key,
    star_id int references star(star_id), 
    name varchar unique not null,
    has_life boolean not null,
    moons_number int, 
    weight numeric(10,3)
);

INSERT INTO planet (
    star_id,
    name,
    has_life,
    moons_number,
    weight
) VALUES 
    (1, 'Saturn', false, 82, 568.340),
    (1, 'Uranus', false, 27, 86.810),
    (1, 'Neptune', false, 14, 102.410),
    (1, 'Venus', false, 0, 4.867),
    (2, 'Planet D', false, 3, 12.000),
    (3, 'Planet E', true, 2, 9.800),
    (4, 'Planet F', false, 5, 7.200),
    (5, 'Planet G', true, 1, 6.400),
    (6, 'Planet H', false, 0, 11.000);
    (2, 'Planet I', false, 1, 5.972),
    (3, 'Planet J', true, 0, 0.642),


INSERT INTO planet (
    star_id,
    name,
    has_life,
    moons_number,
    weight
) VALUES 
    (4, 'Planet K', false, 2, 3.285),
    (5, 'Planet L', true, 4, 7.800),
    (6, 'Planet M', false, 1, 2.100),
    (1, 'Planet N', false, 0, 0.330),
    (2, 'Planet O', false, 13, 17.200),
    (3, 'Planet P', false, 6, 1.024),
    (4, 'Planet Q', true, 8, 3.938),
    (5, 'Planet R', false, 2, 0.690),
    (6, 'Planet S', false, 3, 14.600),
    (1, 'Planet T', false, 0, 0.872),
    (2, 'Planet U', false, 11, 15.400)


CREATE TABLE moon (
    moon_id serial primary key,
    planet_id int references planet(planet_id), 
    name varchar unique not null,
    has_life boolean not null, 
    objects_number int, 
    weight numeric(10,3)
);

INSERT INTO moon (
    planet_id,
    name,
    has_life,
    objects_number,
    weight
) VALUES 
    (4, 'Titan', false, 0, 0.134),
    (4, 'Enceladus', false, 0, 0.012),
    (5, 'Miranda', false, 0, 0.007),
    (5, 'Ariel', false, 0, 0.013),
    (5, 'Umbriel', false, 0, 0.012),
    (6, 'Triton', false, 0, 0.214),
    (6, 'Nereid', false, 0, 0.003),
    (1, 'Ganymede', false, 0, 0.148),
    (1, 'Callisto', false, 0, 0.108),
    (1, 'Europa', false, 0, 0.048),
    (1, 'Io', false, 0, 0.089),
    (1, 'Rhea', false, 0, 0.023),
    (1, 'Dione', false, 0, 0.011),
    (1, 'Tethys', false, 0, 0.007),
    (1, 'Mimas', false, 0, 0.003),
    (1, 'Oberon', false, 0, 0.011),
    (1, 'Titania', false, 0, 0.014),
    (1, 'Iapetus', false, 0, 0.016),
    (1, 'Phoebe', false, 0, 0.008);


INSERT INTO moon (
    planet_id,
    name,
    has_life,
    objects_number,
    weight
) VALUES 
    (4, 'b', false, 0, 0.134),
    (4, 'a', false, 0, 0.012)


CREATE TABLE civilisation (
    civilisation_id serial primary key,
    planet_id int references planet(planet_id), 
    name varchar unique not null
);

INSERT INTO civilisation (
    planet_id,
    name
) VALUES 
    (1, 'Humanity'),
    (5, 'Alien Civ A'),
    (6, 'Alien Civ B');


