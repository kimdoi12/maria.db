-- root 사용자 외부 접근 허용
DROP USER IF EXISTS 'root'@'%';  -- 기존 사용자가 있다면 삭제
CREATE USER 'root'@'%' IDENTIFIED BY 'root'; -- 모든 호스트에서 접근 가능한 root 사용자 생성

-- 모든 데이터베이스 및 테이블에 대한 권한 부여
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

-- pratice_board 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS pratice_board; -- pratice_board라는 이름의 데이터베이스가 없으면 생성

-- pratice_board 데이터베이스 사용
USE pratice_board; -- 이후의 명령어가 pratice_board 데이터베이스에서 실행되도록 설정

-- post 테이블 생성
CREATE TABLE post (
  `num` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- 게시물 번호 (자동 증가)
  `title` VARCHAR(50) NOT NULL,                   -- 게시물 제목
  `writer` VARCHAR(50) NOT NULL,                  -- 작성자
  `content` TEXT NOT NULL,                        -- 게시물 내용
  `reg_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP -- 등록 날짜, 기본값 현재 시간
);

