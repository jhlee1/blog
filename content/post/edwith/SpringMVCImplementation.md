---
title: "Spring MVC Implementation"
date: 2019-05-05T06:59:02+09:00
archives: "2019"
tags: ["spring", "edwith", "webprogramming"]
author: Joohan Lee
---

## Spring MVC 실습

### 1. Controller 작성 실습

- 브라우저에서 `http://localhost:8080/mvcexam/plusform`이라고 요청을 보내면 서버는 2개의 값을 입력받을 수 있는 입력 창과 버튼이 있는 화면을 보여줌
- 2개의 값을 입력하고 버튼을 클릭하면 `POST http://localhost:8080/mvcexam/plus`로 2개의 입력값이 전달됨. 서버는 두 값을 더한 후 jsp에게 request scope로 전달하여 출력
