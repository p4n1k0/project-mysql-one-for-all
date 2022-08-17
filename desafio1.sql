DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plan(
      plan_id INT PRIMARY KEY AUTO_INCREMENT,
      name_plan VARCHAR(50),
      value_plan decimal(5,2)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.user(
      user_id INT PRIMARY KEY AUTO_INCREMENT,
      username VARCHAR(50) NOT NULL,
      idade INT NOT NULL,
      plan_id INT NOT NULL,
      assigned_date VARCHAR(50) NOT NULL,
      FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
  ) engine = InnoDB; 

  CREATE TABLE SpotifyClone.artist(
      artist_id INT PRIMARY KEY AUTO_INCREMENT,
      name VARCHAR(100) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      name VARCHAR(100) NOT NULL,
      artist_id INT NOT NULL,
      length VARCHAR(50) NOT NULL,
      release_year YEAR,
      FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
  ) engine = InnoDB; 

  CREATE TABLE SpotifyClone.cantion(
      cantion_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      name VARCHAR(100) NOT NULL,
      artist_id INT NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
	  FOREIGN KEY (album_id) REFERENCES album(album_id)
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.user_cantion_date(      
      date_reprodution TIMESTAMP,
      cantion_id INT NOT NULL,
      user_id INT NOT NULL,
      PRIMARY KEY (cantion_id, user_id),
      FOREIGN KEY (cantion_id) REFERENCES cantion(cantion_id),
      FOREIGN KEY (user_id) REFERENCES user(user_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.favorite_artist(
      user_id INT NOT NULL,
      artist_id INT NOT NULL,
      PRIMARY KEY (user_id, artist_id),
      FOREIGN KEY (user_id) REFERENCES user(user_id),
      FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
  ) engine = InnoDB;

   INSERT INTO SpotifyClone.plan (plan_id , name_plan, value_plan)
  VALUES
    (1, 'gratuito', 0.00),
    (2, 'familiar', 7.99),
    (3, 'universitário', 5.99),
    (4, 'pessoal', 6.99);

  INSERT INTO SpotifyClone.user (user_id, username, idade, plan_id, assigned_date)
  VALUES
    (1, 'Barbara Liskov', 82, 1, '2019-10-20'),
    (2, 'Robert Cecil Martin', 58, 1, '2017-01-06'),
    (3, 'Ada Lovelace', 37, 2, '2017-12-30'),
    (4, 'Martin Fowler', 46, 2, '2017-01-17'),
    (5, 'Sandi Metz', 58, 2, '2018-04-29'),
    (6, 'Paulo Freire', 19, 3, '2018-02-14'),
    (7, 'Bell Hooks', 26, 3, '2018-01-05'),
    (8, 'Christopher Alexander', 85, 4, '2019-06-05'),
    (9, 'Judith Butler', 45, 4, '2020-05-13'),
    (10, 'Jorge Amado', 58, 4, '2017-02-17'); 

    INSERT INTO SpotifyClone.artist(artist_id, name)
  VALUES
    (1, 'Beyoncé'),
    (2, 'Queen'),
    (3, 'Elis Regina'),
    (4, 'Baco Exu do Blues'),
    (5, 'Blind Guardian'),
    (6, 'Nina Simone');

    INSERT INTO SpotifyClone.album (album_id, name, artist_id, length, release_year)
  VALUES
    (1, 'Renaissance', 1, '279:369:116', 2022),
    (2, 'Jazz', 2, '203:000:000', 1978),
    (3, 'Hot Space', 2, '152:000:000', 1982),
    (4, 'Falso Brilhante', 3, '105:000:000', 1998), 
    (5, 'Vento de Maio', 3, '207:000:000', 2001),
    (6, 'QVVJFA?', 4, '267:000:000', 2003),
    (7, 'Somewhere Far Beyound', 5, '244:000:000', 2007),
    (8, 'I Put A Spell On You', 6, '100:000:000', 2012);

    INSERT INTO SpotifyClone.cantion (artist_id, name, album_id)
  VALUES
    (1, 'BREAK MY SOUL', 1),
    (1, "VIRGO'S GROOVE", 1),
    (1, 'ALIEN SUPERSTAR', 1),
    (2, "Don't Stop Me Now", 2), 
    (2, 'Under Pressure', 3),
    (3, 'Como Nossos Pais', 4),
    (3, 'O Medo de Amar é o Medo de Ser Livre', 5),
    (4, 'Samba em París', 6),
    (5, "The Bard's Song", 7),
    (6, 'Feeling Good', 8);

    INSERT INTO SpotifyClone.user_cantion_date (date_reprodution, user_id, cantion_id)
  VALUES
    ('2022-02-28 10:45:55', 1, 8),
    ('2020-05-02 05:30:35', 1, 2),
    ('2020-03-06 11:22:33', 1, 10),
    ('2022-08-05 08:05:17', 2, 10), 
    ('2020-01-02 07:40:33', 2, 7),
    ('2020-11-13 16:55:13', 3, 10),
    ('2020-12-05 18:38:30', 3, 2),
    ('2021-08-15 17:10:10', 4, 8),
    ('2022-01-09 01:44:33', 5, 8),
    ('2020-08-06 15:23:43', 5, 5),
    ('2017-01-24 00:31:17', 6, 7),
    ('2017-10-12 12:35:20', 6, 1),
    ('2011-12-15 22:30:49', 7, 4),
    ('2012-03-17 14:56:41', 8, 4),
    ('2022-02-24 21:14:22', 9, 9),
    ('2015-12-13 08:30:22', 10, 3);

    INSERT INTO SpotifyClone.favorite_artist(user_id, artist_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1), 
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);