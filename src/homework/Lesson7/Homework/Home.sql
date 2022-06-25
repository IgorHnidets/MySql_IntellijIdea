use social_network;
SELECT photo.id FROM photo INNER JOIN album_photo ap on photo.id = ap.photo_id
INNER JOIN album a on ap.album_id = a.id INNER JOIN account a2 on a.account_id = a2.id
INNER JOIN user u on a2.user_id = u.id WHERE u.name = 'Petro';

SELECT photo.id FROM photo INNER JOIN album_photo ap on photo.id = ap.photo_id
INNER JOIN album a on ap.album_id = a.id INNER JOIN account a2 on a.account_id = a2.id
INNER JOIN user u on a2.user_id = u.id WHERE u.name = 'Ivan';
