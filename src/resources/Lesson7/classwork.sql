use social_network;
SELECT * FROM user left JOIN  account ON user.id = account.user_id WHERE account.user_id is NULL;
SELECT * from message INNER JOIN account on account.id = message.account_id where account.id =1;
SELECT * FROM  message INNER JOIN account on account.id = message.account_id WHERE account.login='account on account.id = messag';
# 4
SELECT * FROM user INNER JOIN account ON user.id = account.user_id INNER JOIN message ON account.id = message.account_id
WHERE user.name = 'Petro';
SELECT message.text,user.name,account.login FROM user INNER JOIN account ON user.id = account.user_id INNER JOIN message ON account.id = message.account_id
WHERE user.name = 'Petro';
# 5
SELECT user.name,message.text,  COUNT(message.account_id) FROM  user INNER JOIN account on user.id = account.user_id inner JOIN message ON account.id = message.account_id
GROUP BY message.account_id;
# 6
SELECT a.id,a.login FROM user INNER JOIN account a on user.id = a.user_id
WHERE user.name = 'Boris' and user.surname = 'Jonsonuk';
# 7

# 8
SELECT COUNT(album.account_id) FROM album INNER JOIN account on album.account_id = account.id INNER JOIN user on account.user_id = user.id
            WHERE user.name = 'Petro';
#
SELECT album.title FROM album INNER JOIN album_photo ap on album.id = ap.album_id
    INNER JOIN photo p on ap.photo_id = p.id WHERE album_id = 3;
# 10
SELECT album.title, p.title from album INNER JOIN  album_photo ap on album.id = ap.album_id INNER JOIN photo p on ap.photo_id = p.id
WHERE album.title = 'workout';