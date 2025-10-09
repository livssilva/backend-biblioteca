CREATE TABLE Aluno (
    id_aluno INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ra VARCHAR (7) UNIQUE NOT NULL,
    nome VARCHAR (80) NOT NULL,
	sobrenome VARCHAR (80) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR (200),
    email VARCHAR (80),
    celular VARCHAR (20) NOT NULL
);

CREATE TABLE Livro (
    id_livro INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR (200) NOT NULL,
    autor VARCHAR (150) NOT NULL,
    editora VARCHAR (100) NOT NULL,
    ano_publicacao VARCHAR (5),
	isbn VARCHAR (20),
    quant_total INTEGER NOT NULL,
    quant_disponivel INTEGER NOT NULL,
    valor_aquisicao DECIMAL (10,2),
    status_livro_emprestado VARCHAR (20)
);

CREATE TABLE Emprestimo (
    id_emprestimo INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_aluno INT REFERENCES Aluno(id_aluno),
    id_livro INT REFERENCES Livro(id_livro),
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    status_emprestimo VARCHAR (20)
);

INSERT INTO Aluno (ra, nome, sobrenome, data_nascimento, endereco, email, celular) 
VALUES 
('8364528', 'Conor', 'McGregor', '2005-01-15', 'Rua UFC, 123', 'mcgregor@ufc.com', '16998959876'),
('2437432', 'Amanda', 'Nunes', '2004-03-22', 'Rua UFC, 456', 'amanda.nunes@ufc.com', '16995992305'),
('2634523', 'Angelina', 'Jolie', '2003-07-10', 'Rua Hollywood, 789', 'jolie@cinema.com', '16991915502'),
('2374563', 'Natalie', 'Portman', '2002-11-05', 'Rua Hollywood, 101', 'natalie.portman@cinema.com', '16993930703'),
('9364523', 'Shaquille', 'ONeal', '2004-09-18', 'Rua NBA, 202', 'shaquille@gmail.com', '16993937030'),
('1735342', 'Harry', 'Kane', '2000-05-18', 'Rua Futebol, 2024', 'kane@futi.com', '16998951983'),
('6329465', 'Jaqueline', 'Carvalho', '2001-12-10', 'Rua Volei, 456', 'jack@volei.com', '16991993575'),
('6253473', 'Sheilla', 'Castro', '2003-04-25', 'Rua Volei, 2028', 'sheilla.castro@volei.com', '16981974547'),
('9263452', 'Gabriela', 'Guimarães', '2007-08-19', 'Rua Volei, 2028', 'gaby@volei.com', '16983932215'),
('1267345', 'Magic', 'Johnson', '2003-07-08', 'Rua NBA, 1999', 'magic@gmail.com', '16993932020'),
('2645221','Jaqueline', 'Moreira', '2007-03-05', 'Rua Airton Senna, 304', 'jaquemoreira@gmail.com', '16364825365'),
('2346863', 'Sônia', 'Souza', '2004-05-23', 'Rua do Limoeiro, 255', 'sonisouza@gmail.com', '16946482534'),
('6583542', 'Aparecida', 'Cardoso', '2008-06-07', 'Rua Nervermore, 123', 'aparecidacar@gmail.com', '16723548543'),
('3748945','Jéssica', 'Oliveira', '2003-05-12', 'Rua Santa Luzia, 343', 'jessioliv@gmail.com', '16234748456'),
('3876455', 'Sandra', 'de Araujo', '2005-02-04', 'Rua Castro Alvez, 233', 'sandraaraujo@gmail.com', '16293658364'),
('7394645', 'Simone', 'Rocha', '2003-09-20', 'Rua Duque de Caxias, 329', 'simonerocha@gmail.com', '16782364587'),
('6384534', 'Ângela', 'Oliveira', '2008-04-27', 'Rua Rui Barbosa, 320', 'angelaoliv@gmail.com', '16826340976'),
('1734655', 'Raimunda', 'dos Santos', '2004-02-16', 'Rua Primeiro de Maio', 'raisantos@gmail.com', '16028345678'),
('8376456', 'Sandra', 'Cardoso', '2005-03-10', 'Rua Alagoas, 433', 'sandracardoso@gmail.com', '16128346598'),
('7364562', 'Luciana', 'Costa', '2003-07-22', 'Rua Santa Rita, 329', 'lucianacosta@gmail.com', '16936475623');


INSERT INTO Livro (titulo, autor, editora, ano_publicacao, isbn, quant_total, quant_disponivel, valor_aquisicao, status_livro_emprestado) 
VALUES 
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'HarperCollins', '1954', '978-0007525546', 10, 10, 150.00, 'Disponível'),
('1984', 'George Orwell', 'Companhia das Letras', '1949', '978-8535906770', 8, 8, 90.00, 'Disponível'),
('Dom Quixote', 'Miguel de Cervantes', 'Penguin Classics', '1605', '978-0142437230', 6, 6, 120.00, 'Disponível'),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Agir', '1943', '978-8522008731', 12, 12, 50.00, 'Disponível'),
('A Revolução dos Bichos', 'George Orwell', 'Penguin', '1945', '978-0141036137', 7, 7, 80.00, 'Disponível'),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins', '1937', '978-0007458424', 9, 9, 140.00, 'Disponível'),
('O Conde de Monte Cristo', 'Alexandre Dumas', 'Penguin Classics', '1844', '978-0140449266', 5, 5, 110.00, 'Disponível'),
('Orgulho e Preconceito', 'Jane Austen', 'Penguin Classics', '1813', '978-0141439518', 7, 7, 90.00, 'Disponível'),
('Moby Dick', 'Herman Melville', 'Penguin Classics', '1851', '978-0142437247', 4, 4, 100.00, 'Disponível'),
('Guerra e Paz', 'Liev Tolstói', 'Companhia das Letras', '1869', '978-8535922343', 3, 3, 130.00, 'Disponível'),
('Cem Anos de Solidão', 'Gabriel García Márquez', 'Record', '1967', '978-8501012569', 10, 9, 95.00, 'Emprestado'),
('A Menina que Roubava Livros', 'Markus Zusak', 'Intrínseca', '2005', '978-8598078175', 12, 12, 70.00, 'Disponível'),
('O Nome do Vento', 'Patrick Rothfuss', 'Arqueiro', '2007', '978-8599296493', 8, 7, 120.00, 'Emprestado'),
('It: A Coisa', 'Stephen King', 'Suma', '1986', '978-8556510781', 6, 6, 130.00, 'Disponível'),
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', '2012', '978-8580572261', 10, 10, 60.00, 'Disponível'),
('O Código Da Vinci', 'Dan Brown', 'Arqueiro', '2003', '978-8599296499', 9, 8, 85.00, 'Emprestado'),
('Os Miseráveis', 'Victor Hugo', 'Martin Claret', '1862', '978-8572326977', 5, 5, 140.00, 'Disponível'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', '1997', '978-8532530787', 15, 14, 75.00, 'Emprestado'),
('O Sol é para Todos', 'Harper Lee', 'José Olympio', '1960', '978-8503012703', 7, 7, 90.00, 'Disponível'),
('A Montanha Mágica', 'Thomas Mann', 'Companhia das Letras', '1924', '978-8535925009', 4, 4, 150.00, 'Disponível');

INSERT INTO Emprestimo (data_emprestimo, data_devolucao, status_emprestimo) 
VALUES 
('2024-09-01', '2024-09-15', 'Em andamento'),
('2024-09-02', '2024-09-16', 'Em andamento'),
('2024-09-03', '2024-09-17', 'Em andamento'),
('2024-09-04', '2024-09-18', 'Em andamento'),
('2024-09-05', '2024-09-19', 'Em andamento'),
('2024-09-06', '2024-09-20', 'Em andamento'),
('2024-09-07', '2024-09-21', 'Em andamento'),
('2024-09-08', '2024-09-22', 'Em andamento'),
('2024-09-09', '2024-09-23', 'Em andamento'),
('2024-09-10', '2024-09-24', 'Em andamento'),
('2024-09-11', '2024-09-25', 'Em andamento'),
('2024-09-11', '2024-09-25', 'Em andamento'),
('2024-09-11', '2024-09-25', 'Em andamento'),
('2024-09-11', '2024-09-25', 'Em andamento'),
('2024-09-12', '2024-09-26', 'Em andamento'),
('2024-09-13', '2024-09-27', 'Em andamento'),
('2024-09-14', '2024-09-28', 'Em andamento'),
('2024-09-15', '2024-09-29', 'Em andamento'),
('2024-09-16', '2024-09-30', 'Em andamento'),
('2024-09-17', '2024-10-01', 'Em andamento'),
('2024-09-18', '2024-10-02', 'Em andamento'),
('2024-09-19', '2024-10-03', 'Em andamento'),
('2024-09-20', '2024-10-04', 'Em andamento'),
('2024-09-21', '2024-10-05', 'Em andamento'),
('2024-09-22', '2024-10-06', 'Em andamento'),
('2024-09-23', '2024-10-07', 'Em andamento'),
('2024-09-24', '2024-10-08', 'Em andamento'),
('2024-09-25', '2024-10-09', 'Em andamento'),
('2024-09-26', '2024-10-10', 'Em andamento'),
('2024-09-27', '2024-10-11', 'Em andamento'),
('2024-09-28', '2024-10-12', 'Em andamento'),
('2024-09-29', '2024-10-13', 'Em andamento'),
('2024-09-30', '2024-10-14', 'Em andamento'),
('2024-10-01', '2024-10-15', 'Em andamento');
