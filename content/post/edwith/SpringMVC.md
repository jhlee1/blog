---
title: "Spring JDBC Implementation"
date: 2019-04-29T12:43:40+09:00
archives: "2019"
tags: ["spring", "edwith", "webprogramming"]
author: Joohan Lee
---

## Spring MVC

### 1. MVC?
- Model-View-Controller의 약자
- 제록스 연구소에서 일하던 린즈커그가 처음 소개한 개념으로, Desktop Application용으로 고안됨
- Model: View가 렌더링하는데 필요한 Data
  - ex) 사용자가 요청한 상품 목록, 주문 내역
- View: 실제 보이는 부분, Model을 사용하여 렌더링 한다.
  - ex) jsp, jsf, pdf, xml등으로 결과를 표현
- Controller: 사용자의 액션에 응답하는 Componennt. Controller는 Model을 업데이트하고 다른 액션을 수행

### 2. Model 1 방식

- Jsp에 HTML과 Java코드가 섞여서 복잡해짐

![MVC_Model_1](..\..\..\resources\images\edwith\SpringMVC\MVC_Model_1.png)
### 3. Model 2 방식
![MVC_Model_2](..\..\..\resources\images\edwith\SpringMVC\MVC_Model_2.png)
### 4. Model 2의 발전형태

- 프론트 컨트롤러는 컨트롤러에게 요청을 위임

![MVC_Model_2_Improved](..\..\..\resources\images\edwith\SpringMVC\MVC_Model_2_Improved.png)
### 5. Spring Web Module

- Model 2 MVC 패턴을 지원하는 Spring Module

![Spring_Web_Module](..\..\..\resources\images\edwith\SpringMVC\Spring_Web_Module.png)
### 6. Spring MVC 기본 동작 흐름
1. Dispatcher Servlet이 요청을 받음
2. Dispatcher Servlet이 Handler Mapping에게 처리할 Controller와 Method를 물어봄 (Handler Mapping은 xml이나 configuration 클래스에서 정보를 가져와서 판단함)
3. Dispatcher Servlet이 Hanler Adapter에게 실행을 요청
4. 해당 Controller의 Method가 실행됨
5. Controller가 Handler Adapter를 통해서 view name을 보냄
6. 받은 View name를 View Resolver에게 넘기고
7. Dispatcher Servlet이 View Resolver에게 받은 View를 출력


![Spring_MVC_Flow](..\..\..\resources\images\edwith\SpringMVC\Spring_MVC_Flow.png)




원본 강의: https://www.edwith.org/boostcourse-web
