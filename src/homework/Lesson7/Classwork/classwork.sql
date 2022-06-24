use social_network;
-- 1  Вибрати всю інформацію про user , які не мають account
SELECT * FROM user left JOIN  account ON user.id = account.user_id WHERE account.user_id is NULL;
-- 2  Вибрати всі повідомлення для account = 1;
SELECT * from message INNER JOIN account on account.id = message.account_id where account.id =1;
-- 3 Вибрати всі повідомлення для account login = test
SELECT * FROM  message INNER JOIN account on account.id = message.account_id WHERE account.login='account on account.id = messag';
--  4 Вибрати всі повідомлення для user = Петро
SELECT * FROM user INNER JOIN account ON user.id = account.user_id INNER JOIN message ON account.id = message.account_id
WHERE user.name = 'Petro';
SELECT message.text,user.name,account.login FROM user INNER JOIN account ON user.id = account.user_id INNER JOIN message ON account.id = message.account_id
WHERE user.name = 'Petro';
--  5  Вивести скільки повідомлень є у кожного користувача (таблиця)
SELECT user.name,message.text,  COUNT(message.account_id) FROM  user INNER JOIN account on user.id = account.user_id inner JOIN message ON account.id = message.account_id
GROUP BY message.account_id;
--  6  Показати акаунт користовуча Борис Лалал
SELECT a.id,a.login FROM user INNER JOIN account a on user.id = a.user_id
WHERE user.name = 'Boris' and user.surname = 'Jonsonuk';
--  7  Вивести всі альбоми, які є у акаунта = “sonia_43‘
SELECT album.title FROM album INNER JOIN account a on album.account_id = a.id
WHERE a.login = 'ivanIsIvan@mail.com';
-- 8  Вивести скільки альбомів є у user = “Petro”
SELECT COUNT(album.account_id) FROM album INNER JOIN account on album.account_id = account.id INNER JOIN user on account.user_id = user.id
            WHERE user.name = 'Petro';
--  9 Вивести всі фотки, які є у альбомі номер 3
SELECT album.title FROM album INNER JOIN album_photo ap on album.id = ap.album_id
    INNER JOIN photo p on ap.photo_id = p.id WHERE album_id = 3;
--  10  Вивести всі фото, які є у альбомі з назвою ‘Nature’
SELECT album.title, p.title from album INNER JOIN  album_photo ap on album.id = ap.album_id INNER JOIN photo p on ap.photo_id = p.id
WHERE album.title = 'workout';