CREATE TABLE IF NOT EXISTS worker (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(1000) NOT NULL,
    birthday DATE,
    level VARCHAR(10) NOT NULL,
    salary INT,

    CONSTRAINT NAME_LIMIT CHECK(CHAR_LENGTH(name) BETWEEN 2 AND 1000),
    CONSTRAINT BIRTHDAY_LIMIT CHECK(birthday >= '1900-01-01'),
    CONSTRAINT LEVEL_ENUM CHECK(level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    CONSTRAINT SALARY_LIMIT CHECK(salary BETWEEN 100 AND 100000)
);

CREATE TABLE IF NOT EXISTS client(
    id IDENTITY PRIMARY KEY,
    name VARCHAR(1000) NOT NULL,

    CONSTRAINT NAME_LIMIT CHECK(CHAR_LENGTH(name) BETWEEN 2 AND 1000)
);

CREATE TABLE IF NOT EXISTS project (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    client_id BIGINT,
    start_date DATE,
    end_date DATE,

    CONSTRAINT CLIENT_ID_FK FOREIGN KEY (client_id) REFERENCES client(id)
);

CREATE TABLE IF NOT EXISTS project_worker (
    project_id BIGINT,
    worker_id BIGINT,

    PRIMARY KEY (project_id, worker_id)

    CONSTRAINT project_id_fk FOREIGN KEY (project_id) REFERENCES project(id),
    CONSTRAINT worker_id_fk FOREIGN KEY (worker_id) REFERENCES worker(id)
);
