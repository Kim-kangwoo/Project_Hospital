# Project_Hospital
Spring & Mybatis 기반 병원진료예약 프로젝트 <br>
<br>
<br>
## 프로젝트 소개
### 프로젝트 목적
- 오프라인으로 병원에 대한 정보 및 예약이 어려우신 분들을 위해<br> 온라인으로 해당 병원의 의료정보 및 진료 예약을 간편하게 도와주는 서비스
### 주요기능
1. 방문자의 상태에 따른 진료과, 의료진을 선택 정보 조회 및 예약
2. 방문자의 진료스케줄과 과거 진료기록 조회
3. 건강정보, QnA 등 게시글 등록 및 수정과 조회
4. 병원의 위치 및 길찾기, 주차장안내 등의 정보 조회
<br>

## 폴더 구조
### /src/main
1. /java/com/project/hospital
   * common (Paging, DB 이중화)
   * view (Controller)
   * 서비스 로직
   * DTO 
   * DAO (DB 접근)
   * VO
2. resources
   * config.properties - JavaEmail 유저이름
   * applicationContext.xml - 환경 설정 파일
<br>

## 실행 전 필수 설정
1. tomcat 내장서버를 필요로 함으로 서버 설정
2. /src/main/resources config.properties 파일 생성
   * smtp.email, smtp.password 입력 (*email Only Google)
   * password = 앱 비밀번호
<br>

## 기술 스택
- **FrontEnd** HTML, CSS, Javascript, Jquery, JSTL
- **BackEnd** Java 8, Spring, JDBC, Mybatis
- **Database** Oracle
- **Build Tool** Maven
- **Tools** Eclipse
