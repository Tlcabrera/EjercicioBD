create database biblioteca;
use biblioteca;
create table Libro(
idLibro varchar(20) primary key,
tituloLibro varchar(50) not null,
identificacionAutorFK varchar(50),
anioPublicacion year not null,
estadoLibro bool
);

create table Autor(
identificacionAutor varchar(50) primary key,
nombreAutor varchar(20) not null,
fechaNacimiento date
);
create table Miembro(
identificacionMiembro int auto_increment primary key,
nombreMiembro varchar(20) not null,
direccionMiembro varchar(50),
fechaInscripcion date not null,
estadoMiembro bool
);

create table Prestamo(
idPestamo int auto_increment primary key,
idMiembroFK int not null,
idLibroFK varchar(20),
fechaPrestamo date not null,
fechaDevolucion date not null,
estadoPrestamo bool
);

alter table Libro
add constraint FKAutorLibro
foreign key (identificacionAutorFK)
references Autor(identificacionAutor);
