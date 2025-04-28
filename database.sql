CREATE TABLE alunos (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL,
  turma TEXT NOT NULL,
  curso TEXT NOT NULL,
  data_nascimento DATE
);

CREATE TABLE cursos (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL,
  duracao_anos INT
);

CREATE TABLE matriculas (
  id SERIAL PRIMARY KEY,
  aluno_id INT REFERENCES alunos(id) ON DELETE CASCADE,
  curso_id INT REFERENCES cursos(id) ON DELETE CASCADE,
  data_matricula DATE DEFAULT CURRENT_DATE
);


INSERT INTO alunos (nome, turma, curso, data_nascimento)
VALUES ('Gabriel Bartmanovicz', 'T15', 'Ciência da Computação', '2005-08-23'),
       ('Vivian Peres', 'T15', 'Adm Tech', '2003-08-15'),
       ('Messias Olivindo', 'T15', 'Ciência da Computação', '2006-08-21'), 
       ('Thulio Bacco', 'T15', 'Engenharia da Computacão', '2005-04-09'), 
       ('Antonio Andre', 'T15', 'Ciência da Computação', '2003-02-02'), 
       ('Diego Figueiredo', 'T15', 'Engenharia da Computação', '2004-12-12'), 
       ('Leandro Filho', 'T15', 'Engenharia da Computação', '2005-09-09'), 
       ('Guilherme Schmidt', 'T15', 'Engenharia da Computação', '2006-04-16'), 
       ('Leonardo Corbi', 'T15', 'Engenharia da Computação', '2002-07-29'), 
       ('Sarah Duarte', 'T15', 'Ciência da Computação', '2005-03-02');

    


INSERT INTO cursos (nome, duracao_anos)
VALUES 
    ('Ciência da Computação', 4),
    ('Adm Tech', 4),
    ('Engenharia da Computação', 5);


-- Inserindo as matrículas corretas
INSERT INTO matriculas (aluno_id, curso_id)
VALUES
    (1, 1), -- Gabriel Bartmanovicz -> Ciência da Computação
    (2, 2), -- Vivian Peres -> Adm Tech
    (3, 1), -- Messias Olivindo -> Ciência da Computação
    (4, 3), -- Thulio Bacco -> Engenharia da Computação
    (5, 1), -- Antonio Andre -> Ciência da Computação
    (6, 3), -- Diego Figueiredo -> Engenharia da Computação
    (7, 3), -- Leandro Filho -> Engenharia da Computação
    (8, 3), -- Guilherme Schmidt -> Engenharia da Computação
    (9, 3), -- Leonardo Corbi -> Engenharia da Computação
    (10, 1); -- Sarah Duarte -> Ciência da Computação



SELECT a.nome AS aluno, c.nome AS curso, m.data_matricula
FROM matriculas m
JOIN alunos a ON m.aluno_id = a.id
JOIN cursos c ON m.curso_id = c.id;


-----------------------

select * from alunos
select * from matriculas
select * from cursos

