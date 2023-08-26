CREATE TABLE Warden(
	Warden_ID NUMBER PRIMARY KEY,
	Warden_Name VARCHAR(40) NOT NULL,
	Mobile_no char(10),
	Email VARCHAR(40)
);

CREATE TABLE Hostel(
	Hostel_ID NUMBER PRIMARY KEY,
	Hostel_Name VARCHAR(40) NOT NULL,
	Warden_ID NUMBER ,
	FOREIGN KEY(Warden_ID) REFERENCES Warden(Warden_ID)
);

CREATE TABLE Room(
	Room_ID NUMBER PRIMARY KEY,
	Size_of_room NUMBER,
	Type_of_room CHAR(1), CHECK (Type_of_room in('N', 'D')),
	Hostel_ID NUMBER,
	FOREIGN KEY(Hostel_ID) REFERENCES Hostel(Hostel_ID)
);

CREATE TABLE Parents(
	Parent_ID NUMBER PRIMARY KEY,
	Parent_name VARCHAR(40),
	Parent_address VARCHAR(40),
	Mobile_no CHAR(10),
	Email VARCHAR(40)
);

CREATE TABLE Fee(
	Receipt_ID NUMBER PRIMARY KEY,
	Fee_type char(1) NOT NULL, CHECK (Fee_type in('F', 'H')),
	Fee_paid NUMBER NOT NULL,
	Deposite NUMBER,
	Dues NUMBER
);

CREATE TABLE Mess(
	Mess_ID NUMBER PRIMARY KEY,
	Mess_name VARCHAR(40),
	Mobile_no CHAR(10),
	Mess_fee NUMBER
);

CREATE TABLE Student(
	Student_ID NUMBER PRIMARY KEY,
	Student_name VARCHAR(40),
	Student_address VARCHAR(40),
	Gender char(1), CHECK (Gender in ('M', 'F')),
	Mobile_no CHAR(10),
	Email VARCHAR(40),
	Date_of_birth DATE,
	Department VARCHAR(5),
	Room_ID NUMBER,
	Fee_receipt_no NUMBER,
	Mess_ID NUMBER,
	Parent_ID NUMBER,
	FOREIGN KEY(Room_ID) REFERENCES Room(Room_ID),
	FOREIGN KEY(Fee_receipt_no) REFERENCES Fee(Receipt_ID),
	FOREIGN KEY(Mess_ID) REFERENCES Mess(Mess_ID),
	FOREIGN KEY(Parent_ID) REFERENCES Parents(Parent_ID)
);
















