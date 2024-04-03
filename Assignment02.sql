CREATE DATABASE movies;
USE movies;
CREATE TABLE features (
    feature_id int NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    year int NOT NULL,
    type varchar(255) NOT NULL,
    PRIMARY KEY (feature_id)
);

CREATE TABLE feature_work (
   job_id int NOT NULL AUTO_INCREMENT,
   feature_id int NOT NULL,
   person varchar(255) NOT NULL,
   job varchar(255) NOT NULL,
   PRIMARY KEY (job_id),
   FOREIGN KEY (feature_id) REFERENCES features(feature_id) ON DELETE CASCADE
);

CREATE TABLE feature_role (
   role_id int NOT NULL AUTO_INCREMENT,
   feature_id int NOT NULL,
   person varchar(255) NOT NULL,
   role varchar(255) NOT NULL,
   PRIMARY KEY (role_id),
   FOREIGN KEY (feature_id) REFERENCES features(feature_id) ON DELETE CASCADE
);


CREATE TABLE role_type (
   role_id int NOT NULL,
   role_type varchar(255) NOT NULL,
   PRIMARY KEY (role_id, role_type),
   FOREIGN KEY (role_id) REFERENCES feature_role(role_id) ON DELETE CASCADE
);

INSERT INTO features(title, year, type) values ("Dr. No", 1962, "movie");
INSERT INTO features(title, year, type) values ("From Russia with Love", 1963, "movie");
INSERT INTO features(title, year, type) values ("Goldfinger", 1964, "movie");
INSERT INTO features(title, year, type) values ("Thunderball", 1965, "movie");
INSERT INTO features(title, year, type) values ("You Only Live Twice", 1967, "movie");
INSERT INTO features(title, year, type) values ("On Her Majesty's Secret Service", 1969, "movie");
INSERT INTO features(title, year, type) values ("Diamonds Are Forever", 1971, "movie");
INSERT INTO features(title, year, type) values ("Live and Let Die", 1973, "movie");
INSERT INTO features(title, year, type) values ("The Man with the Golden Gun", 1974, "movie");
INSERT INTO features(title, year, type) values ("The Spy Who Loved Me", 1977, "movie");
INSERT INTO features(title, year, type) values ("Moonraker", 1979, "movie");
INSERT INTO features(title, year, type) values ("For Your Eyes Only", 1981, "movie");
INSERT INTO features(title, year, type) values ("Octopussy", 1983, "movie");
INSERT INTO features(title, year, type) values ("A View to a Kill", 1985, "movie");
INSERT INTO features(title, year, type) values ("The Living Daylights", 1987, "movie");
INSERT INTO features(title, year, type) values ("Licence to Kill", 1989, "movie");
INSERT INTO features(title, year, type) values ("GoldenEye", 1995, "movie");
INSERT INTO features(title, year, type) values ("Tomorrow Never Dies", 1997, "movie");
INSERT INTO features(title, year, type) values ("The World Is Not Enough", 1999, "movie");
INSERT INTO features(title, year, type) values ("Die Another Day", 2002, "movie");
INSERT INTO features(title, year, type) values ("Casino Royale", 2006, "movie");
INSERT INTO features(title, year, type) values ("Quantum of Solace", 2008, "movie");
INSERT INTO features(title, year, type) values ("Skyfall", 2012, "movie");
INSERT INTO features(title, year, type) values ("Spectre", 2015, "movie");
INSERT INTO features(title, year, type) values ("No Time to Die", 2021, "movie");
INSERT INTO features(title, year, type) values ("Sherlock", 2010, "TV show");
INSERT INTO features(title, year, type) values ("Sherlock Holmes", 2009, "movie");
INSERT INTO features(title, year, type) values ("Enola Holmes", 2020, "movie");
INSERT INTO features(title, year, type) values ("Sherlock Gnomes", 2018, "movie");
INSERT INTO features(title, year, type) values ("Mr. Holmes", 2018, "movie");
INSERT INTO features(title, year, type) values ("Man of Steel", 2013, "movie");
INSERT INTO features(title, year, type) values ("Iron Man", 2008, "movie");
INSERT INTO features(title, year, type) values ("The Adventures of Robin Hood", 1938, "movie");
INSERT INTO features(title, year, type) values ("Robin Hood", 2010, "movie");
INSERT INTO features(title, year, type) values ("Robin Hood: Prince of Thieves", 1991, "movie");
INSERT INTO features(title, year, type) values ("Robin and Marian", 1976, "movie");
INSERT INTO features(title, year, type) values ("Doctor Strange", 2016, "movie");
INSERT INTO features(title, year, type) values ("Superman Returns", 2006, "movie");
INSERT INTO features(title, year, type) values ("Superman Vs. Batman", 2016, "movie");
INSERT INTO features(title, year, type) values ("The Social Network", 2009, "movie");
INSERT INTO features(title, year, type) values ("House of Cards", 2013, "TV show");
INSERT INTO features(title, year, type) values ("The Imitation Game", 2014, "movie");
INSERT INTO features(title, year, type) values ("Knives Out", 2019, "movie");
INSERT INTO features(title, year, type) values ("The Glass Onion", 2022, "movie");
INSERT INTO features(title, year, type) values ("Casino Royale", 1967, "movie");
INSERT INTO feature_work(feature_id, person, job) VALUES (1, "Sean Connery", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (2, "Sean Connery", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (3, "Sean Connery", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (4, "Sean Connery", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (5, "Sean Connery", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (6, "George Lazenby", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (7, "Sean Connery", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (8, "Roger Moore", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (9, "Roger Moore", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (10, "Roger Moore", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (11, "Roger Moore", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (12, "Roger Moore", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (13, "Roger Moore", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (14, "Roger Moore", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (15, "Timothy Dalton", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (16, "Timothy Dalton", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (17, "Pierce Brosnan", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (18, "Pierce Brosnan", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (19, "Pierce Brosnan", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (20, "Pierce Brosnan", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (21, "Daniel Craig", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (22, "Daniel Craig", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (23, "Daniel Craig", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (24, "Daniel Craig", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (25, "Daniel Craig", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (26, "Benedict Cumberbatch", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (27, "Robert Downey Jr.", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (28, "Henry Cavill", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (29, "Johnny Depp", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (30, "Ian McKellen", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (31, "Henry Cavill", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (32, "Robert Downey Jr.", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (33, "Errol Flynn", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (34, "Russell Crowe", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (35, "Kevin Costner", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (36, "Sean Connery", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (37, "Benedict Cumberbatch", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (38, "Kevin Spacey", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (39, "Jesse Eisenberg", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (39, "Henry Cavill", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (40, "Jesse Eisenberg", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (41, "Kevin Spacey", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (42, "Benedict Cumberbatch", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (43, "Daniel Craig", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (44, "Daniel Craig", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "David Niven", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "Peter Sellers", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "Woody Allen", "actor");
INSERT INTO feature_work(feature_id, person, job) VALUES (1, "Terence Young", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (2, "Terence Young", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (3, "Guy Hamilton", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (4, "Terence Young", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (5, "Lewis Gilbert", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (6, "Peter R. Hunt", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (7, "Guy Hamilton", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (8, "Guy Hamilton", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (9, "Guy Hamilton", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (10, "Lewis Gilbert", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (11, "Lewis Gilbert", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (12, "John Glen", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (13, "John Glen", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (14, "John Glen", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (15, "John Glen", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (16, "John Glen", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (17, "Martin Campbell", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (18, "Roger Spottiswoode", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (19, "Michael Apted", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (20, "Lee Tamahori", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (21, "Martin Campbell", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (22, "Marc Forster", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (23, "Sam Mendes", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (24, "Sam Mendes", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (25, "Cary Joji Fukunaga", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (43, "Rian Johnson", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (44, "Rian Johnson", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "John Huston", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "Val Guest", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "Ken Hughes", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "Joseph McGrath", "director");
INSERT INTO feature_work(feature_id, person, job) VALUES (45, "Robert Parrish", "director");

INSERT INTO feature_role(feature_id, person, role) VALUES (1, "Sean Connery", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (2, "Sean Connery", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (3, "Sean Connery", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (4, "Sean Connery", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (5, "Sean Connery", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (6, "George Lazenby", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (7, "Sean Connery", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (8, "Roger Moore", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (9, "Roger Moore", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (10, "Roger Moore", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (11, "Roger Moore", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (12, "Roger Moore", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (13, "Roger Moore", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (14, "Roger Moore", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (15, "Timothy Dalton", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (16, "Timothy Dalton", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (17, "Pierce Brosnan", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (18, "Pierce Brosnan", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (19, "Pierce Brosnan", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (20, "Pierce Brosnan", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (21, "Daniel Craig", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (22, "Daniel Craig", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (23, "Daniel Craig", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (24, "Daniel Craig", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (25, "Daniel Craig", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (26, "Benedict Cumberbatch", "Sherlock Holmes");
INSERT INTO feature_role(feature_id, person, role) VALUES (27, "Robert Downey Jr.", "Sherlock Holmes");
INSERT INTO feature_role(feature_id, person, role) VALUES (28, "Henry Cavill", "Sherlock Holmes");
INSERT INTO feature_role(feature_id, person, role) VALUES (29, "Johnny Depp", "Sherlock Holmes");
INSERT INTO feature_role(feature_id, person, role) VALUES (30, "Ian McKellen", "Sherlock Holmes");
INSERT INTO feature_role(feature_id, person, role) VALUES (31, "Henry Cavill", "Superman");
INSERT INTO feature_role(feature_id, person, role) VALUES (31, "Henry Cavill", "Clark Kent");
INSERT INTO feature_role(feature_id, person, role) VALUES (32, "Robert Downey Jr.", "Iron Man");
INSERT INTO feature_role(feature_id, person, role) VALUES (32, "Robert Downey Jr.", "Tony Stark");
INSERT INTO feature_role(feature_id, person, role) VALUES (33, "Errol Flynn", "Robin Hood");
INSERT INTO feature_role(feature_id, person, role) VALUES (34, "Russell Crowe", "Robin Hood");
INSERT INTO feature_role(feature_id, person, role) VALUES (35, "Kevin Costner", "Robin Hood");
INSERT INTO feature_role(feature_id, person, role) VALUES (36, "Sean Connery", "Robin Hood");
INSERT INTO feature_role(feature_id, person, role) VALUES (37, "Benedict Cumberbatch", "Doctor Strange");
INSERT INTO feature_role(feature_id, person, role) VALUES (38, "Kevin Spacey", "Lex Luthor");
INSERT INTO feature_role(feature_id, person, role) VALUES (39, "Jesse Eisenberg", "Lex Luthor");
INSERT INTO feature_role(feature_id, person, role) VALUES (39, "Henry Cavill", "Superman");
INSERT INTO feature_role(feature_id, person, role) VALUES (39, "Henry Cavill", "Clark Kent");
INSERT INTO feature_role(feature_id, person, role) VALUES (40, "Jesse Eisenberg", "Mark Zuckerberg");
INSERT INTO feature_role(feature_id, person, role) VALUES (41, "Kevin Spacey", "Frank Underwood");
INSERT INTO feature_role(feature_id, person, role) VALUES (42, "Benedict Cumberbatch", "Alan Turing");
INSERT INTO feature_role(feature_id, person, role) VALUES (43, "Daniel Craig", "Benoit Blanc");
INSERT INTO feature_role(feature_id, person, role) VALUES (44, "Daniel Craig", "Benoit Blanc");
INSERT INTO feature_role(feature_id, person, role) VALUES (45, "David Niven", "James Bond");
INSERT INTO feature_role(feature_id, person, role) VALUES (45, "Peter Sellers", "Evelyn Tremble");
INSERT INTO feature_role(feature_id, person, role) VALUES (45, "Woody Allen", "Jimmy Bond");
INSERT INTO role_type(role_id, role_type) values (1, "hero");
INSERT INTO role_type(role_id, role_type) values (1, "spy");
INSERT INTO role_type(role_id, role_type) values (1, "playboy");
INSERT INTO role_type(role_id, role_type) values (2, "hero");
INSERT INTO role_type(role_id, role_type) values (2, "spy");
INSERT INTO role_type(role_id, role_type) values (2, "playboy");
INSERT INTO role_type(role_id, role_type) values (3, "hero");
INSERT INTO role_type(role_id, role_type) values (3, "spy");
INSERT INTO role_type(role_id, role_type) values (3, "playboy");
INSERT INTO role_type(role_id, role_type) values (4, "hero");
INSERT INTO role_type(role_id, role_type) values (4, "spy");
INSERT INTO role_type(role_id, role_type) values (4, "playboy");
INSERT INTO role_type(role_id, role_type) values (5, "hero");
INSERT INTO role_type(role_id, role_type) values (5, "spy");
INSERT INTO role_type(role_id, role_type) values (5, "playboy");
INSERT INTO role_type(role_id, role_type) values (6, "hero");
INSERT INTO role_type(role_id, role_type) values (6, "spy");
INSERT INTO role_type(role_id, role_type) values (6, "playboy");
INSERT INTO role_type(role_id, role_type) values (7, "hero");
INSERT INTO role_type(role_id, role_type) values (7, "spy");
INSERT INTO role_type(role_id, role_type) values (7, "playboy");
INSERT INTO role_type(role_id, role_type) values (8, "hero");
INSERT INTO role_type(role_id, role_type) values (8, "spy");
INSERT INTO role_type(role_id, role_type) values (8, "playboy");
INSERT INTO role_type(role_id, role_type) values (9, "hero");
INSERT INTO role_type(role_id, role_type) values (9, "spy");
INSERT INTO role_type(role_id, role_type) values (9, "playboy");
INSERT INTO role_type(role_id, role_type) values (10, "hero");
INSERT INTO role_type(role_id, role_type) values (10, "spy");
INSERT INTO role_type(role_id, role_type) values (10, "playboy");
INSERT INTO role_type(role_id, role_type) values (11, "hero");
INSERT INTO role_type(role_id, role_type) values (11, "spy");
INSERT INTO role_type(role_id, role_type) values (11, "playboy");
INSERT INTO role_type(role_id, role_type) values (12, "hero");
INSERT INTO role_type(role_id, role_type) values (12, "spy");
INSERT INTO role_type(role_id, role_type) values (12, "playboy");
INSERT INTO role_type(role_id, role_type) values (13, "hero");
INSERT INTO role_type(role_id, role_type) values (13, "spy");
INSERT INTO role_type(role_id, role_type) values (13, "playboy");
INSERT INTO role_type(role_id, role_type) values (14, "hero");
INSERT INTO role_type(role_id, role_type) values (14, "spy");
INSERT INTO role_type(role_id, role_type) values (14, "playboy");
INSERT INTO role_type(role_id, role_type) values (15, "hero");
INSERT INTO role_type(role_id, role_type) values (15, "spy");
INSERT INTO role_type(role_id, role_type) values (15, "playboy");
INSERT INTO role_type(role_id, role_type) values (16, "hero");
INSERT INTO role_type(role_id, role_type) values (16, "spy");
INSERT INTO role_type(role_id, role_type) values (16, "playboy");
INSERT INTO role_type(role_id, role_type) values (17, "hero");
INSERT INTO role_type(role_id, role_type) values (17, "spy");
INSERT INTO role_type(role_id, role_type) values (17, "playboy");
INSERT INTO role_type(role_id, role_type) values (18, "hero");
INSERT INTO role_type(role_id, role_type) values (18, "spy");
INSERT INTO role_type(role_id, role_type) values (18, "playboy");
INSERT INTO role_type(role_id, role_type) values (19, "hero");
INSERT INTO role_type(role_id, role_type) values (19, "spy");
INSERT INTO role_type(role_id, role_type) values (19, "playboy");
INSERT INTO role_type(role_id, role_type) values (20, "hero");
INSERT INTO role_type(role_id, role_type) values (20, "spy");
INSERT INTO role_type(role_id, role_type) values (20, "playboy");
INSERT INTO role_type(role_id, role_type) values (21, "hero");
INSERT INTO role_type(role_id, role_type) values (21, "spy");
INSERT INTO role_type(role_id, role_type) values (21, "playboy");
INSERT INTO role_type(role_id, role_type) values (22, "hero");
INSERT INTO role_type(role_id, role_type) values (22, "spy");
INSERT INTO role_type(role_id, role_type) values (22, "playboy");
INSERT INTO role_type(role_id, role_type) values (23, "hero");
INSERT INTO role_type(role_id, role_type) values (23, "spy");
INSERT INTO role_type(role_id, role_type) values (23, "playboy");
INSERT INTO role_type(role_id, role_type) values (24, "hero");
INSERT INTO role_type(role_id, role_type) values (24, "spy");
INSERT INTO role_type(role_id, role_type) values (24, "playboy");
INSERT INTO role_type(role_id, role_type) values (25, "hero");
INSERT INTO role_type(role_id, role_type) values (25, "spy");
INSERT INTO role_type(role_id, role_type) values (25, "playboy");

INSERT INTO role_type(role_id, role_type) values (26, "hero");
INSERT INTO role_type(role_id, role_type) values (26, "detective");
INSERT INTO role_type(role_id, role_type) values (27, "hero");
INSERT INTO role_type(role_id, role_type) values (27, "detective");
INSERT INTO role_type(role_id, role_type) values (28, "hero");
INSERT INTO role_type(role_id, role_type) values (28, "detective");
INSERT INTO role_type(role_id, role_type) values (29, "hero");
INSERT INTO role_type(role_id, role_type) values (29, "detective");
INSERT INTO role_type(role_id, role_type) values (30, "hero");
INSERT INTO role_type(role_id, role_type) values (30, "detective");
INSERT INTO role_type(role_id, role_type) values (31, "alien");
INSERT INTO role_type(role_id, role_type) values (31, "superhero");
INSERT INTO role_type(role_id, role_type) values (31, "hero");
INSERT INTO role_type(role_id, role_type) values (32, "hero");
INSERT INTO role_type(role_id, role_type) values (32, "reporter");

INSERT INTO role_type(role_id, role_type) values (33, "superhero");
INSERT INTO role_type(role_id, role_type) values (33, "hero");

INSERT INTO role_type(role_id, role_type) values (34, "billionaire");
INSERT INTO role_type(role_id, role_type) values (34, "playboy");
INSERT INTO role_type(role_id, role_type) values (34, "philanthropist");
INSERT INTO role_type(role_id, role_type) values (34, "hero");
INSERT INTO role_type(role_id, role_type) values (34, "superhero");
INSERT INTO role_type(role_id, role_type) values (34, "CEO");
INSERT INTO role_type(role_id, role_type) values (35, "hero");
INSERT INTO role_type(role_id, role_type) values (35, "thief");
INSERT INTO role_type(role_id, role_type) values (35, "archer");

INSERT INTO role_type(role_id, role_type) values (36, "hero");
INSERT INTO role_type(role_id, role_type) values (36, "thief");
INSERT INTO role_type(role_id, role_type) values (36, "archer");
INSERT INTO role_type(role_id, role_type) values (37, "hero");
INSERT INTO role_type(role_id, role_type) values (37, "thief");
INSERT INTO role_type(role_id, role_type) values (37, "archer");
INSERT INTO role_type(role_id, role_type) values (38, "hero");
INSERT INTO role_type(role_id, role_type) values (38, "thief");
INSERT INTO role_type(role_id, role_type) values (38, "archer");
INSERT INTO role_type(role_id, role_type) values (39, "hero");
INSERT INTO role_type(role_id, role_type) values (39, "magician");
INSERT INTO role_type(role_id, role_type) values (39, "superhero");
INSERT INTO role_type(role_id, role_type) values (39, "doctor");
INSERT INTO role_type(role_id, role_type) values (40, "villain");
INSERT INTO role_type(role_id, role_type) values (40, "playboy");
INSERT INTO role_type(role_id, role_type) values (41, "villain");
INSERT INTO role_type(role_id, role_type) values (41, "CEO");
INSERT INTO role_type(role_id, role_type) values (41, "billionaire");
INSERT INTO role_type(role_id, role_type) values (42, "alien");
INSERT INTO role_type(role_id, role_type) values (42, "superhero");
INSERT INTO role_type(role_id, role_type) values (42, "hero");
INSERT INTO role_type(role_id, role_type) values (43, "hero");
INSERT INTO role_type(role_id, role_type) values (43, "reporter");
INSERT INTO role_type(role_id, role_type) values (44, "CEO");
INSERT INTO role_type(role_id, role_type) values (44, "villain");
INSERT INTO role_type(role_id, role_type) values (44, "billionaire");
INSERT INTO role_type(role_id, role_type) values (45, "politician");
INSERT INTO role_type(role_id, role_type) values (45, "villain");
INSERT INTO role_type(role_id, role_type) values (45, "president");
INSERT INTO role_type(role_id, role_type) values (46, "hero");
INSERT INTO role_type(role_id, role_type) values (46, "mathematician");
INSERT INTO role_type(role_id, role_type) values (47, "detective");
INSERT INTO role_type(role_id, role_type) values (47, "hero");
INSERT INTO role_type(role_id, role_type) values (48, "detective");
INSERT INTO role_type(role_id, role_type) values (48, "hero");


CREATE TABLE franchises (
    franchise_id int NOT NULL AUTO_INCREMENT,
    franchise_name varchar(255) NOT NULL,
    PRIMARY KEY (franchise_id)
);

ALTER TABLE features
ADD COLUMN franchise_id int,
ADD FOREIGN KEY (franchise_id) REFERENCES franchises(franchise_id) ON DELETE SET NULL;

INSERT INTO franchises(franchise_name) VALUES ('James Bond Franchise');
INSERT INTO franchises(franchise_name) VALUES ('Sherlock Holmes Franchise');
INSERT INTO franchises(franchise_name) VALUES ('Robin Hood Franchise');
INSERT INTO franchises(franchise_name) VALUES ('Superhero Franchise');
INSERT INTO franchises(franchise_name) VALUES ('None');

SET SQL_SAFE_UPDATES = 0;

UPDATE features SET franchise_id = 1 WHERE title IN (
    "Dr. No", "From Russia with Love", "Goldfinger", "Thunderball", "You Only Live Twice",
    "On Her Majesty's Secret Service", "Diamonds Are Forever", "Live and Let Die",
    "The Man with the Golden Gun", "The Spy Who Loved Me", "Moonraker", "For Your Eyes Only",
    "Octopussy", "A View to a Kill", "The Living Daylights", "Licence to Kill",
    "GoldenEye", "Tomorrow Never Dies", "The World Is Not Enough", "Die Another Day",
    "Casino Royale", "Quantum of Solace", "Skyfall", "Spectre", "No Time to Die"
);

UPDATE features SET franchise_id = 2 WHERE title IN (
    "Sherlock", "Sherlock Holmes", "Enola Holmes", "Sherlock Gnomes", "Mr. Holmes"
);


UPDATE features SET franchise_id = 3 WHERE title IN (
    "The Adventures of Robin Hood", "Robin Hood", "Robin Hood: Prince of Thieves", "Robin and Marian"
);

UPDATE features SET franchise_id = 4 WHERE title IN (
    "Man of Steel", "Iron Man", "Doctor Strange", "Superman Returns",'Superman Vs. Batman'
);

UPDATE features SET franchise_id = 5 WHERE title IN (
    "The Social Network", "House of Cards", "The Imitation Game", "Knives Out","The Glass Onion"
);

INSERT INTO franchises(franchise_name) VALUES ('Star Wars');
INSERT INTO franchises(franchise_name) VALUES ('The Dark Knight Trilogy');
INSERT INTO franchises(franchise_name) VALUES ('Indiana Jones');
INSERT INTO franchises(franchise_name) VALUES ('Pirates of the Caribbean');

INSERT INTO features(title, year, type, franchise_id) VALUES ("Star Wars: Episode IV - A New Hope",2021,"movie", 6);
INSERT INTO features(title, year, type, franchise_id) VALUES ("Raiders of the Lost Art", 2018, "movie", 8);
INSERT INTO features(title, year, type, franchise_id) VALUES ("Pirates of the Caribbean: At Worlds End", 2017, "movie", 9);
INSERT INTO features(title, year, type, franchise_id) VALUES ("The Dark Knight", 2017, "movie", 7);
INSERT INTO features(title, year, type, franchise_id) VALUES ("The Last Jedi", 2001, "movie", 6);
INSERT INTO features(title, year, type, franchise_id) VALUES ("Return of Jedi", 1993, "movie", 6);
INSERT INTO features(title, year, type, franchise_id) VALUES ("Batman Begins", 2007, "movie", 7);

select * from features ;
-- Assignment 02 

/* Create table budget with foreign key featureid */
CREATE TABLE budget (
    feature_id INT PRIMARY KEY, 	/*Primary key for the budget table*/
    production_Budget_$ DECIMAL(15, 2), 	/*Production budget in dollars*/
    domestic_BoxOffice_$ DECIMAL(15, 2),	/*Domestic box office earnings in dollars*/
    international_BoxOffice_$ DECIMAL(15, 2),	/*International box office earnings in dollars*/
    FOREIGN KEY (feature_id) REFERENCES features(feature_id) 	/*Foreign key constraint referencing features table*/
);	
/*Inserting data into the budget table with corresponding feature IDs with the help of title and year */

INSERT INTO budget (feature_id, production_Budget_$, domestic_BoxOffice_$, international_BoxOffice_$)
VALUES
    ((SELECT feature_id FROM features WHERE title = 'Dr. No' AND year = YEAR('1962-01-01')), 1000000, 16067035, 43500000),
    ((SELECT feature_id FROM features WHERE title = 'From Russia with Love' AND year = YEAR('1963-01-01')), 2000000, 24800000, 54100000),
    ((SELECT feature_id FROM features WHERE title = 'Goldfinger' AND year = YEAR('1964-01-01')), 3000000, 51100000, 73800000),
    ((SELECT feature_id FROM features WHERE title = 'Thunderball' AND year = YEAR('1965-01-01')), 9000000, 63600000, 77600000),
    ((SELECT feature_id FROM features WHERE title = 'You Only Live Twice' AND year = YEAR('1967-01-01')), 9500000, 43100000, 68500000),
    ((SELECT feature_id FROM features WHERE title = 'On Her Majesty''s Secret Service' AND year = YEAR('1969-01-01')), 8000000, 22800000, 59200000),
    ((SELECT feature_id FROM features WHERE title = 'Diamonds Are Forever' AND year = YEAR('1971-01-01')), 7200000, 43800000, 72199985),
    ((SELECT feature_id FROM features WHERE title = 'Live and Let Die' AND year = YEAR('1973-01-01')), 7000000, 35400000, 126400000),
    ((SELECT feature_id FROM features WHERE title = 'The Man with the Golden Gun' AND year = YEAR('1974-01-01')), 7000000, 21000000, 76600000),
    ((SELECT feature_id FROM features WHERE title = 'The Spy Who Loved Me' AND year = YEAR('1977-01-01')), 14000000, 46800000, 138600000),
    ((SELECT feature_id FROM features WHERE title = 'Moonraker' AND year = YEAR('1979-01-01')), 31000000, 70300000, 140000000),
    ((SELECT feature_id FROM features WHERE title = 'For Your Eyes Only' AND year = YEAR('1981-01-01')), 28000000, 54800000, 140500000),
    ((SELECT feature_id FROM features WHERE title = 'Octopussy' AND year = YEAR('1983-01-01')), 27500000, 67900000, 119600000),
    ((SELECT feature_id FROM features WHERE title = 'A View to a Kill' AND year = YEAR('1985-01-01')), 30000000, 50327960, 102300000),
    ((SELECT feature_id FROM features WHERE title = 'The Living Daylights'AND year = YEAR('1987-01-01')), 40000000, 51185000, 140014996),
    ((SELECT feature_id FROM features WHERE title = 'Licence to Kill' AND year = YEAR('1989-01-01')), 42000000, 34667015, 121500000),
    ((SELECT feature_id FROM features WHERE title = 'GoldenEye' AND year = YEAR('1995-01-01')), 60000000, 106429941, 249999992),
    ((SELECT feature_id FROM features WHERE title = 'Tomorrow Never Dies' AND year = YEAR('1997-01-01')), 110000000, 125304276, 214200000),
    ((SELECT feature_id FROM features WHERE title = 'The World Is Not Enough' AND year = YEAR('1999-01-01')), 135000000, 126930660, 234800000),
    ((SELECT feature_id FROM features WHERE title = 'Die Another Day' AND year = YEAR('2002-01-01')), 142000000, 16094213, 271000000),
    ((SELECT feature_id FROM features WHERE title = 'Casino Royale' AND year = YEAR('2006-01-01')), 102000000, 167365000, 427055216),
    ((SELECT feature_id FROM features WHERE title = 'Quantum of Solace' AND year = YEAR('2008-01-01')), 230000000, 169368427, 422323651),
    ((SELECT feature_id FROM features WHERE title = 'Skyfall' AND year = YEAR('2012-01-01')), 200000000, 304360277, 806166704),
    ((SELECT feature_id FROM features WHERE title = 'Spectre' AND year = YEAR('2015-01-01')), 245000000, 200074175, 679003169),
    ((SELECT feature_id FROM features WHERE title = 'No Time to Die' AND year = YEAR('2021-01-01')), 250000000, 160891007, 598038764),
    ((SELECT feature_id FROM features WHERE title = 'Sherlock Holmes' AND year = YEAR('2009-01-01')), 90000000, 209028679, 289409533),
    ((SELECT feature_id FROM features WHERE title = 'Sherlock Gnomes' AND year = YEAR('2018-01-01')), 59000000, 43242871, 54216235),
    ((SELECT feature_id FROM features WHERE title = 'Man of Steel' AND year = YEAR('2013-01-01')), 225000000, 291045518, 376954000),
    ((SELECT feature_id FROM features WHERE title = 'Iron Man' AND year = YEAR('2008-01-01')), 186000000, 318604126, 266567421),
    ((SELECT feature_id FROM features WHERE title = 'Robin Hood' AND year = YEAR('2010-01-01')), 210000000, 105487148, 21697185),
    ((SELECT feature_id FROM features WHERE title = 'Robin Hood: Prince of Thieves' AND year = YEAR('1991-01-01')), 50000000, 165493908, 225006092),
    ((SELECT feature_id FROM features WHERE title = 'Doctor Strange' AND year = YEAR('2016-01-01')), 165000000, 232641920, 443701254),
    ((SELECT feature_id FROM features WHERE title = 'Superman Returns' AND year = YEAR('2006-01-01')), 232000000, 200120000, 190961192),
    ((SELECT feature_id FROM features WHERE title = 'Superman Vs. Batman' AND year = YEAR('2016-01-01')), 263000000, 330360194, 542034897),
    ((SELECT feature_id FROM features WHERE title = 'The Social Network' AND year = YEAR('2009-01-01')), 40000000, 96962694, 127959441	),
    ((SELECT feature_id FROM features WHERE title = 'The Imitation Game' AND year = YEAR('2014-01-01')), 15000000, 91125143, 136203442),
    ((SELECT feature_id FROM features WHERE title = 'Knives Out' AND year = YEAR('2019-01-01')), 40000000, 165364060, 147534686),
    ((SELECT feature_id FROM features WHERE title = 'Casino Royale' AND year = YEAR('1967-01-01')), 12000000, 22744718, 19000000),
    ((SELECT feature_id FROM features WHERE title = 'Star Wars: Episode IV - A New Hope' AND year = YEAR('2021-01-01')), 11000000, 460998007, 314400000),
  

    ((SELECT feature_id FROM features WHERE title = 'Pirates of the Caribbean: At Worlds End'AND year = YEAR('2017-01-01')), 300000000, 309420425, 651576067),
    ((SELECT feature_id FROM features WHERE title = 'The Dark Knight'AND year = YEAR('2017-01-01')), 185000000, 534235491, 465004537),
    ((SELECT feature_id FROM features WHERE title = 'The Last Jedi' AND year = YEAR('2001-01-01')), 262000000, 620181382, 711453759),
    
    ((SELECT feature_id FROM features WHERE title = "Batman Begins" AND year = YEAR('2007-01-01')), 150000000, 205343774, 151426819	);


select * from budget;