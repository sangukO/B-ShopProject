# B-ShopProject
>Book Shop Project
>
>중고 도서 판매 웹사이트

2021년도 3학년 1학기에 진행한 개인 프로젝트로 해당 학기 과목인 Spring Boot를 선택하여 기존에 설정한 개발 목표인 이미지 업로드 및 출력까지 구현 완료된 상태입니다.

유저 친화적인 인터페이스를 가진 웹사이트를 만들고 싶어 UI의 깔끔함과 가독성에 중점을 두고 개발했습니다.  
주요 기능은 도서 등록, 판매, 구매, 결제, 관리입니다. 회원별 등급을 두고 낮은 등급의 회원이 판매를 원할 시 관리자의 승인이 필요하게 구현했고, 결제 기능은 결제 플러그인 아임포트 API 서비스를 이용하여 카카오페이로 결제가 가능하게 구현했습니다.

아직 미완 상태로, 페이지마다 섞여있는 css 스타일, 등록된 도서 정보 수정 페이지 이미지 출력, 장바구니 기능, 마이페이지 잔여 기능 등 수정해야 할 부분이 남아있습니다.

## 프로젝트 진행 기간

2021 . 03 . 03  - 2021 . 06 . 16

## 개발 환경

```sh
Windows 10
JAVA (jdk 1.8.0_251)
MySQL 8.0.23
Spring Tool Suite 4 (Spring Boot)
```

## 주차별 진행 내역
* 7주차 이전
  * 주제 선정
* 7주차
  * 개발 환경 구축
  * 스프링 환경 동작을 위한 설정
  * index 페이지 생성 및 컨트롤러 구성
* 8주차
  * 템플릿을 사용하여 메인 페이지 UI 구성
  * 로그인, 회원가입 페이지 구현 (기능 x)
* 9주차
  * 로그인, 회원가입 기능 구현
  * bcrypt 해쉬 함수로 비밀번호 암호화
* 10주차
  * 도서 등록, 조회, 수정, 삭제 기능 구현
* 11주차
  * 구매, 결제 기능 50% 구현
  * 회원 등급 구현, 2등급 이상 회원은 관리 승인 절차 x
* 12주차
  * 구매, 결제 기능 구현
  * 결제 완료 시 판매 완료로 전환, 판매자의 판매 개수 증가, 판매 개수 일정량 도달 시 등급 상승 구현
* 13주차
  * 낮은 등급 회원의 판매 요청 시 승인/거절 관리 기능 추가
  * 마이페이지 판매탭 구현
* 14주차
  * 마이페이지 판매탭 수정, 구매탭 구현
  * 메인 페이지 UI 수정
* 15주차
  * 이미지 업로드 기능 50% 구현
* 16주차
  * 이미지 업로드 기능 구현
  * 업로드된 이미지 출력 기능 구현
  * 최종 프로젝트 완료 보고서 제출 및 완료 발표, 시연

## 스크린샷

메인화면

![메인화면](https://user-images.githubusercontent.com/71215834/122809137-ae282e00-d308-11eb-987a-02eee1f30178.png)

회원가입

![회원가입](https://user-images.githubusercontent.com/71215834/122809147-b08a8800-d308-11eb-8c23-8694c611a19f.png)

로그인

![로그인](https://user-images.githubusercontent.com/71215834/122809135-ad8f9780-d308-11eb-8001-00376b82f7d3.png)

판매 등록

![판매등록](https://user-images.githubusercontent.com/71215834/122809143-af595b00-d308-11eb-9e7c-0c97c6b80b24.png)

상세 조회

![상세조회](https://user-images.githubusercontent.com/71215834/122809140-aec0c480-d308-11eb-97d8-81aac849be31.png)

구매 팝업

![구매팝업](https://user-images.githubusercontent.com/71215834/122809133-ad8f9780-d308-11eb-8bf3-a1c340609237.png)

전체 도서 관리

![전체관리](https://user-images.githubusercontent.com/71215834/122809142-af595b00-d308-11eb-87c0-09174684f139.png)

판매 신청 도서 관리

![판매신청](https://user-images.githubusercontent.com/71215834/122809145-aff1f180-d308-11eb-983a-6e551b18ad7c.png)

마이페이지 판매탭

![판매탭](https://user-images.githubusercontent.com/71215834/122809129-ac5e6a80-d308-11eb-8a0a-3deb723f9866.png)

마이페이지 구매탭

![구매탭](https://user-images.githubusercontent.com/71215834/122809146-aff1f180-d308-11eb-8625-26eff4c0a590.png)

## 정보
오상욱 / woqls1972@gmail.com

_db 관련 정보는 수정하여야 합니다._
