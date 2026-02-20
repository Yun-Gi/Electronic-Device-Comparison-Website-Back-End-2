[🇰🇷 한국어(Korean)](README.md) | [🇯🇵 日本語(Japanese)](README_ja.md)
# 🚀 전자기기 비교 웹사이트

> GPU, CPU, 스마트폰의 전자기기의 스펙을 비교하고 게시판을 통해 의견을 공유할 수 있는 웹사이트입니다.

<br>

## 📖 목차

1. [프로젝트 소개](#-프로젝트-소개)
2. [주요 기능](#-주요-기능)
3. [미리보기](#%EF%B8%8F-미리보기)
4. [사용 기술](#%EF%B8%8F-사용-기술)
5. [설치 및 실행 방법](#%EF%B8%8F-설치-및-실행-방법)
6. [팀원 소개](#%E2%80%8D%E2%80%8D%E2%80%8D-팀원-소개)
   
<br>

## 📌 프로젝트 소개

이 프로젝트는 2학년 1학기 백엔드 강의의 팀플 과제를 위해 제작되었습니다.  
새로운 전자기기를 구매할 때마다 여러가지 기기를 놓고 비교하는데 어려움을 겪었던 경험을 살려 한 사이트에서 쉽게 비교할 수 있는 사이트를 목표로 삼았습니다.

<br>

## ✨ 주요 기능

- **기능 1:** 전자기기(스마트폰, GPU, CPU)의 스펙을 비교할 수 있습니다.
- **기능 2:** 게시글 작성, 조회, 수정, 삭제(CRUD)가 가능한 게시판 기능

<br>

## 🖼️ 미리보기

<img width="2862" height="1350" alt="cpu비교" src="https://github.com/user-attachments/assets/dba4fb9f-87bc-4548-b058-7363469b49e6" />

<br>

## 🛠️ 사용 기술

- **Backend:** `Java`, `JSP`, `JDBC`
- **Frontend:** `HTML`, `CSS`, `JavaScript`
- **Database:** `MySQL`
- **Web Server:** `Apache Tomcat`
<br>

## ⚙️ 설치 및 실행 방법

```bash
이 프로젝트는 Java (JSP/Servlet) 및 Maven 기반으로 구축되었습니다. 
로컬에서 실행하기 위해서는 Java(JDK), Maven, Apache Tomcat, MySQL이 설치되어 있어야 합니다.
저는 Eclipse를 사용해서 개발하였습니다. 아마 다른 IDE로도 실행은 되겠지만 테스트는 안 해봤습니다.

# 1. 저장소 클론
git clone https://github.com/Yun-Gi/Electronic-Device-Comparison-Website-Back-End-2.git

# 2. 데이터베이스 설정
로컬 PC에서 MySQL 서버를 실행하고 새로운 데이터 베이스 스키마를 생성합니다. 마지막으로 SQL파일을 이용해 스키마에 테이블을 추가합니다.
src/main/java/util/DatabaseUtil.java에서 dbURL, dbID, dbPassword를 환경에 맞게 수정해주세요.
테스트는 느낌으로 간단하게 만든 DB라서 따로 DB를 만들던지 외부에서 크롤링을 하던지 바꾸셔도 상관없습니다.

# 3. 프로젝트 임포트 및 설정
Eclipse에서 Import Project from External Model > Maven을 선택해서 이 프로젝트를 불러옵니다. 
프로젝트를 불러온 후, Eclipse가 pom.xml을 기반으로 Maven 라이브러리(dependencies)를 모두 다운로드할 때까지 잠시 기다립니다.

# 4. 웹 서버 연동 및 실행
Eclipse 하단의 'Servers' 탭으로 이동하여 New Server Wizard를 엽니다.
Apache > (설치한 Tomcat 버전, 예: Tomcat 9.0)을 선택하고, 로컬에 설치한 Tomcat 경로를 지정하여 서버를 등록합니다.
프로젝트 폴더(ElectroCompare)를 우클릭한 뒤, **Run As > Run on Server**를 선택하여 방금 등록한 Tomcat 서버로 프로젝트를 실행합니다.
서버가 정상적으로 켜지면, 웹 브라우저에서 http://localhost:8080/ElectroCompare/ (또는 IDE에서 열어준 기본 주소)로 접속하여 확인합니다.

```

<br>

## 👨‍👩‍👧‍👦 팀원 소개

| 이름 | 역할 |  
| 이윤기 | GPU 제품 조회 API 설계 및 구현, CPU GPU 관련 정보 DB구축 |  
| 이재항 | 프론트엔드 디자인 설계 및 개발, SmartPhone 제품 조회 API 설계 및 구현, 게시판 디자인 게시판 API와 연동 |  
| 이규혁 | 회원관리 목적의 User API 설계 및 구현, CPU 제품 조회 API 개발 및 구현 |  
| 임재선 | 사용자간의 정보 공유 목적의 게시판 API 설계 및 구현, User API와 연동, 게시판 디자인 게시판 API와 연동 |  
