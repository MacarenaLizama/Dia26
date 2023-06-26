USE esquema_amistades;

INSERT INTO usuarios( nombre, apellido)
VALUES		('Mauricio', 'Palma'),
			('Sergio', 'Freire'),
            ('Rodrigo','Salinas'),
            ('Francisca', 'Valenzuela'),
            ('Alejandra','Rodriguez'),
            ('Barbara','Lopez');

INSERT INTO amistades( usuario_id, amigo_id)
VALUES		(1,2), (1,4), (1,6), (2,1), (2,3),(2,5), (3, 2), (3,5), (4,3),(5,1),(5,6), (6,2), (6,3);

SELECT *
FROM usuarios
JOIN amistades ON usuarios.id=amistades.usuario_id
LEFT JOIN usuarios as amigos ON amigos.id=amistades.amigo_id;

SELECT *
FROM usuarios
JOIN amistades ON usuarios.id=amistades.usuario_id
LEFT JOIN usuarios as amigos ON amigos.id=amistades.amigo_id
WHERE usuarios.id=1;

SELECT count(*) 
AS total_amistades
FROM amistades;

SELECT amigos.nombre, amigos.apellido
FROM usuarios
JOIN amistades ON usuarios.id=amistades.usuario_id
JOIN usuarios AS amigos ON amigos.id=amistades.amigo_id
WHERE usuarios.id=3
ORDER BY amigos.apellido, amigos.nombre ASC;







