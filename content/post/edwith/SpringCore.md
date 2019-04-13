---
title: "SpringCore"
date: 2019-02-27T23:10:04+09:00
archives: "2019"
tags: ["spring", "edwith", "webProgramming"]
author: Joohan Lee
---

## Spring Core

### 1. Spring 특징

- 엔터프라이즈급 어플리케이션을 구축할 수 있는 가벼운 솔루션이자, One-Stop-Shop(모든 과정을 한꺼번에 해결)
- 모듈화
  - 약 20개의 모듈로 구성
  - 필요한 모듈만 가져다 사용
- IoC Container
- 선언적 Transaction을 관리할 수 있다
- MVC Framework 제공
- AOP

### 2. Spring Core 모듈

- AOP와 Instrumentation
  - spring-AOP : AOP 얼라이언스(Alliance)와 호환되는 방법으로 AOP를 지원
  - spring-aspects : AspectJ와의 통합을 제공
  - spring-instrument  : instrumentation을 지원하는 클래스와 특정 WAS에서 사용하는 클래스로 더 구현체를 제공
    BCI(Byte  Code Instrumentations) - 런타임이나 로드(Load) 때 클래스의 바이트 코드에 변경을 가하는 방법

-  Messaging

  - spring-messaging : 스프링 프레임워크 4부터 메시지 기반 어플리케이션을 작성할 수 있는 Message,  MessageChannel, MessageHandler 등을 제공

- 데이터 엑서스(Data Access) / 통합(Integration)
  - JDBC, ORM, OXM, JMS 및 트랜잭션 모듈로 구성
  - spring-jdbc : 자바 JDBC프로그래밍을 쉽게 할 수 있는 기능
  - spring-tx : 선언적 트랜잭션 관리를 할 수 있는 기능
  - spring-orm : JPA, JDO및 Hibernate를 포함한 ORM API를 위한 통합 레이어를 제공
  - spring-oxm : JAXB, Castor, XMLBeans, JiBX 및 XStream과 같은 Object/XML 맵핑
  - spring-jms : 메시지 생성(producing) 및 사용(consuming)을 위한 기능을 제공
    Spring Framework 4.1부터 spring-messaging모듈과의 통합

- 웹(Web)
  - spring-web, spring-webmvc, spring-websocket, spring-webmvc-portlet 모듈로 구성
    - spring-web : 멀티 파트 파일 업로드, 서블릿 리스너 등 웹 지향 통합 기능을 제공한다. HTTP클라이언트와 Spring의 원격 지원을 위한 웹 관련 부분을 제공
    - spring-webmvc : Web-Servlet 모듈이라고도 불리며, Spring MVC 및 REST 웹 서비스 구현을 포함
    - spring-websocket : 웹 소켓 지원
    - spring-webmvc-portlet : 포틀릿 환경에서 사용할 MVC 구현

### 3. IoC/DI Container

- Container
  - 인스턴스의 생명주기(LifeCycle) 관리
  - 생성된 인스턴스에 추가적인 기능 제공
  - ex) WAS가 Servlet을 관리해줌
- IOC(Inversion of Controller)
  - 제어의 역전 - 프로그램의 흐름을 개발자가 아니라 다른 프로그램이 하는 것
  - Factory Design Pattern 사용
- DI(Dependency Injection)
  - class 사이의 의존 관계를 Bean설정 정보를 바탕으로 container가 자동으로 연결해주는 것

ex) DI가 적용안된 경우

```java
class Engine {
}

class Car {
    Engine v5 = new Engine();
}
```

ex) DI 적용

```java
@Component
class Engine {
}

@Component
class Car {
    @Autowired
    Engine v5
}
```

- Spring에서 제공하는 IoC/DI Container
  - BeanFactory: IoC/DI에 대한 기본 기능 제공
  - ApplicationContext: BeanFactory의 모든 기능을 포함하며 Transaction처리, AOP 등에 대한 처리를 할 수 있다. BeanPostProcessor, BeanFactoryPostProcessor등을 자동으로 등록하고, 국제화 처리, 어플리케이션 이벤트 등을 처리
    - BeanPostProcessor: 컨테이너의 기본로직을  Overriding하여 인스턴스화 와 의존성 처리 로직 등을 개발자가 원하는 대로 구현 할 수 있다.
    - BeanFactoryPostProcessor: meta data를 커스터마이징 할 수 있다.
  - 일반적으로 BeanFactory는 너무 기본적인 기능만 제공하기 때문에 ApplicationContext를 더 많이 씀

### 4. IoC/DI 실습 - XML 파일을 이용한 설정







### 5. IoC/DI 실습 - Java Config을 이용한 설정





원본 강의: https://www.edwith.org/boostcourse-web