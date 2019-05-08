---
title: "Javascript Handlebar"
date: 2019-05-09T00:01:16+09:00
archives: "2019"
tags: ["edwith", "javascript", "webProgramming"]
author: Joohan Lee
---

## Handlebar

### 1. handlebar를 이용해서 template 작성하기 

- 단순 예제

```html
<html>
	<head>
    	<style>
            li { list-style : none;}
        </style>
    </head>
	<body>
        <h1>Template using handlebar</h1>

        <section class="show">

        </section>
        <script type="myTemplate" id="listTemplate">
        	<li>
        		<div>Author: {{name}}</div>
        		<div class="content">{{content}}</div>
        		<div>likes: <span> {{like}} </span></div>
        		<div class="comment">
        			<div>{{comment}}</div>
        		</div>
        	</li>
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.1.2/handlebars.min.js"></script>
        <script>
            var data = {
                "id": 88,
                "name": "John",
                "content": "new post!",
                "like": 5,
                "comment": "This is a comment"
            };
        	var template = document.querySelector("#listTemplate").innerText;

            //pre-compile
        	var bindTemplate = Handlebars.compile(template); //bindTemplate은 메서드입니다.
            var resultHTML = bindTemplate(data);
            console.log(resultHTML);
            var show = document.querySelector(".show")
            show.innerHTML = resultHTML;
        </script>
    </body>
</html>

```
