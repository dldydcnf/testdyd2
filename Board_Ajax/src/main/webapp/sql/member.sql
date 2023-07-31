drop table member cascade constraints purge;
--1. index.jsp에서 시작합니다.
--2. 관리자 계정 admin, 비번 1234를 만듭니다.
--3. 사용자 계정을 3개 만듭니다.

create table member(
	id				VARCHAR2(12),
	password		VARCHAR2(10),
	name			VARCHAR2(15),
	age				NUMBER(2),
	gender			VARCHAR2(3),
	email			VARCHAR2(30),
	memberfile		VARCHAR2(50),
	PRIMARY KEY(id)
);

select * from member;

--memberfile은 회원 정보 수정시 적용합니다.
