AngularJS Interview's Q&A
=====================

Curated list with some basic **questions** when a FrontEnd-WebUI-JavaScript Developer is interviewee.

### Tests

Test Exam 1: [http://plnkr.co/edit/8C1UgO?p=info](http://plnkr.co/edit/8C1UgO?p=info)

```javascript
    var tags = [angular1.3, directives, $http, formValidation, ngMessages, filters];
  ```


#Questions

1. [Why to use AngularJS?](#1)
2. What are the advantage of AngularJS?
3. Does AngularJS has dependency on jQuery?
4. What is jQLite/jQuery Lite?
5. How to access jQLite?
6. What browsers AngularJS support?
7. What is the size of AngularJS file?
8. What are the AngularJS features?
9. When dependent modules of a module are loaded?
10. What is Angular's prefixes $ and $$?
11. What are Filters in AngularJS?
12. What are Directives in AngularJS?
13. What is the role of ng-app, ng-init and ng-model directives?
14. What are different ways to invoke a directive?
15. What is restrict option in directive?
16. Can you define multiple restrict options on a directive?
17. What is auto bootstrap process in AngularJS?
18. What is manual bootstrap process in AngularJS?
19. What is scope in AngularJS?
20. What is $scope and $rootScope?
21. What is scope hierarchy?
22. What is the difference between $scope and scope?
23. How AngularJS is compiled?
24. How AngularJS compilation is different from other JavaScript frameworks?
25. How Directives are compiled?
26. What are Compile, Pre and Post linking in AngularJS?
27. What directives are user to show and hide HTML elements in AngularJS?
28. Explain directives ng-if, ng-switch and ng-repeat.
29. What are ng-repeat special variables?
30. How AngularJS handle data binding?
31. What is the difference between $watch, $digest and $apply?
32. Explain $watch(), $watchGroup() and $watchCollection() functions on scope.
33. Explain AngularJS scope life-cycle.
34. Explain digest life-cycle in AngularJS.
35. When to use $destroy() function of scope?
36. What is the difference between $evalAsync and $timeout?
37. What is the difference between $watch and $observe?
38. What is the difference between $parse and $eval?
39. What is Isolate Scope and why it is required?
40. Does AngularJS support MVC?
41. What is Model in AngularJS?
42. What is ViewModel in AngularJS?
43. What is Controller in AngularJS?
44. How to share information between controllers in AngularJS?
45. What is $emit, $broadcast and $on in AngularJS?
46. What is View in AngularJS?
47. What are different AngularJS form properties?
48. What are different states of a form in AngularJS?
49. What is Service in AngularJS?
50. What are different ways to create a service in AngularJS?
51. What is the difference between Factory, Service and Provider?
52. What is the difference between Kris Kowal's Q and $q?
53. What is Restangular?
54. What are the advantages of Restangular over $resource and $http?
55. What is the difference between $window and ```window``` in AngularJS?
56. What is the difference between $document and ```window.document``` in AngularJS?
57. What is the difference between $timeout and ```window.setTimeout``` in AngularJS?
58. What is the difference between $interval and ```window.setInterval``` in AngularJS?
59. What is Routing in AngularJS?
60. What is AngularUI router and how it is different from ngRoute?
61. What is $injector and $inject?
62. What is Dependency Injection in AngularJS?
63. What is i18n and L10n?
64. What is $locale service?
65. How to manage cookies in AngularJS?
66. How to detect swite event in mobile browsers/devices in AngularJS?
67. How to do animations with AngularJS's helpers?
68. What is the directive that support animations?
69. How to debug AngularJS app in browser?
70. How to securely parse and manipulate your HTML data in AngularJS?
71. What is AngularJS 2.0?
72. What is TypeScript?


----
#Answers

### <a name="1"></a> 1) Why to use AngularJS?

There are following reasons to choose AngularJS as a web development framework:
1. It is based on MVC pattern which helps you to organize your web apps or web application properly.2. It extends HTML by attaching directives to your HTML markup with new attributes or tags and expressionsin order to define very powerful templates.3. It also allows you to create your own directives, making reusable components that fill your needs andabstract your DOM manipulation logic.4. It supports two-way data binding i.e. connects your HTML (views) to your JavaScript objects (models)seamlessly. In this way any change in model will update the view and vice versa without any DOMmanipulation or event handling.5. It encapsulates the behavior of your application in controllers which are instantiated with the help ofdependency injection.6. It supports services that can be injected into your controllers to use some utility code to fullfil your need.For example, it provides $http service to communicate with REST service.7. It supports dependency injection which helps you to test your angular app code very easily.8. Also, AngularJS is mature community to help you. It has widely support over the internet.


### 2) What are the advantage of AngularJS?

There are following advantages of AngularJS:
1. **Data Binding** - AngularJS provides a powerful data binding mechanism to bind data to HTML elements by using scope.2. **Customize & Extensible** - AngularJS is customized and extensible as per you requirement. You can create your own custom components like directives, services etc.3. **Code Reusability** - AngularJS allows you to write code which can be reused. For example custom directive which you can reuse.4. **Support** – AngularJS is mature community to help you. It has widely support over the internet. Also, AngularJS is supported by Google which gives it an advantage.5. **Compatibility** - AngularJS is based on JavaScript which makes it easier to integrate with any other JavaScript library and runnable on browsers like IE, Opera, FF, Safari, Chrome etc.6. **Testing** - AngularJS is designed to be testable so that you can test your AngularJS app components as easy as possible. It has dependency injection at its core, which makes it easy to test.


### 3) Does AngularJS has dependency on jQuery?

AngularJS has no dependency on jQuery library. But it can be used with jQuery library.


### 4) What is jQLite/jQuery Lite?

jQLite is a subset of jQuery that is built directly into AngularJS. jQLite provides you all the useful features of jQuery. In fact it provides you limited features or functions of jQuery.


### 5) How to access jQLite?

jQuery lite or the full jQuery library if available, can be accessed via the AngularJS code by using the element() function in AngularJS. Basically, ```angular.element()``` is an alias for the jQuery function.


### 6) What browsers AngularJS support?

The latest version of AngularJS 1.3 support Safari, Chrome, Firefox, Opera 15+, IE9+ and mobile browsers(Android, Chrome Mobile, iOS Safari, Opera Mobile).AngularJS 1.3 has dropped support for IE8 but AngularJS 1.2 will continue to support IE8.


### 7) What is the size of AngularJS file?

The size of the compressed and minified file is < 36KB.


### 8) What are the AngularJS features?

The features of AngularJS are listed below:
1. Modules2. Directives3. Templates4. Scope5. Expressions6. Data Binding7. MVC (Model, View & Controller)8. Validations9. Filters10. Services11. Routing12. Dependency Injection13. Testing


### 9) When dependent modules of a module are loaded?

A module might have dependencies on other modules. The dependent modules are loaded by angularbefore the requiring module is loaded.In other words the configuration blocks of the dependent modules execute before the configuration blocks of the requiring module. The same is true for the run blocks. Each module can only be loaded once, even if multiple other modules require it.


### 10) What is Angular’s prefixes $ and $$?

To prevent accidental name collisions with your code, Angular prefixes names of public objects with $ andnames of private objects with $$. So, do not use the $ or $$ prefix in your code.


### 11) What are Filters in AngularJS?

Filters are used to format data before displaying it to the user. They can be used in view templates, controllers, services and directives. There are some built-in filters provided by AngularJS like as Currency, Date, Number, OrderBy, Lowercase, Uppercase etc. You can also create your own filters.

Filter Syntax
```{{ expression | filter}}```


### 12) What are Directives in AngularJS?

AngularJS directives are a combination of AngularJS template markups (HTML attributes or elements, or CSS classes) and supporting JavaScript code. The JavaScript directive code defines the template data and behaviors of the HTML elements.
AngularJS directives are used to extend the HTML vocabulary i.e. they decorate html elements with new behaviors and help to manipulate html elements attributes in interesting way.
There are some built-in directives provided by AngularJS like as ng-app, ng-controller, ng-repeat, ng-model etc.


### 13) What is the role of ng-app, ng-init and ng-model directives?

The main role of these directives is explained as:

- ```ng-app``` - Initialize the angular app.- ```ng-init``` - Initialize the angular app data.- ```ng-model``` - Bind the html elem


### 14) What are different ways to invoke a directive?

There are four methods to invoke a directive in your angular app which are equivalent.
| Method          | Syntax |
|-----------------|--------|
| As an attribute |    ```<span my-directive></span>```    |
| As a class      |    ```<span class="my-directive: expression;"></span>```    |
| As an element   |    ```<my-directive></my-directive>```    |
| As a comment    |    ```<!-- directive: my-directive expression -->```    |


### 15) What is restrict option in directive?

The restrict option in angular directive, is used to specify how a directive will be invoked in your angular app i.e. as an attribute, class, element or comment.

There are four valid options for restrict:

```html
'A' (Attribute)- <span my-directive></span>'C' (Class)- <span class="my-directive:expression;"></span>
'E' (Element)- <my-directive></my-directive>'M' (Comment)- <!-- directive: my-directive expression -->
```


### 16) Can you define multiple restrict options on a directive?

You can also specify multiple restrict options to support more than one methods of directive invocation as an element or an attribute. Make sure all are specified in the restrict keyword as: ```restrict: 'EA'``` .


### 17) What is auto bootstrap process in AngularJS?

Angular initializes automatically upon ```DOMContentLoaded``` event or when the angular.js script is downloaded to the browser and the ```document.readyState``` is set to ```complete```. At this point AngularJS looks for the ```ng-app``` directive which is the root of angular app compilation and tells about AngularJS part within DOM. When the ```ng-app``` directive is found then Angular will:

1. Load the module associated with the directive.2. Create the application injector.3. Compile the DOM starting from the ng-app root element.This process is called auto-bootstrapping.```html
<html><body ng-app="myApp"><div ng-controller="Ctrl"> Hello {{msg}}!</div>    <script src="lib/angular.js"></script>    <script>var app = angular.module('myApp', []); app.controller('Ctrl', function ($scope) {              $scope.msg = 'World';          });    </script></body></html>
```### 18) What is manual bootstrap process in AngularJS?

You can manually initialized your angular app by using **angular.bootstrap()** function. This function takes the modules as parameters and should be called within **angular.element(document).ready()** function. The **angular.element(document).ready()** function is fired when the DOM is ready for manipulation.

```html
<html><body>    <div ng-controller="Ctrl">Hello {{msg}}! </div>    <script src="lib/angular.js"></script>    <script>        var app = angular.module('myApp', []);        app.controller('Ctrl', function ($scope) {              $scope.msg = 'World';          });        //manual bootstrap processangular.element(document).ready(function () { angular.bootstrap(document, ['myApp']);});    </script></body></html>
```

Note:
 - You should not use the ng-app directive when manually bootstrapping your app. - You should not mix up the automatic and manual way of bootstrapping your app. - Define modules, controller, services etc. before manually bootstrapping your app as defined in above example.


### 19) What is scope in AngularJS?

Scope is a JavaScript object that refers to the application model. It acts as a context for evaluating angular expressions. Basically, it acts as glue between controller and view.

Scopes are hierarchical in nature and follow the DOM structure of your AngularJS app. AngularJS has two scope objects: **$rootScope** and **$scope**.


### 20) What is $scope and $rootScope?

**$scope** - A $scope is a JavaScript object which is used for communication between controller and view. Basically, $scope binds a view (DOM element) to the model and functions defined in a controller.

**$rootScope** - The $rootScope is the top-most scope. An app can have only one $rootScope which will be shared among all the components of an app. Hence it acts like a global variable. All other $scopes are children of the $rootScope.For example, suppose you have two controllers: Ctrl1 and Ctrl2 as given below:

```html
<!doctype html><html><body ng-app="myApp"><div ng-controller="Ctrl1" style="border:2px solid blue; padding:5px"> Hello {{msg}}!<br />Hello {{name}}! (rootScope) </div><br /><div ng-controller="Ctrl2" style="border:2px solid green; padding:5px">Hello {{msg}}! <br />Hey {{myName}}! <br />Hi {{name}}! (rootScope) </div>    <script src="lib/angular.js"></script>    <script>var app = angular.module('myApp', []); app.controller('Ctrl1', function ($scope, $rootScope) {            $scope.msg = 'World';            $rootScope.name = 'AngularJS';        });app.controller('Ctrl2', function ($scope, $rootScope) { $scope.msg = 'Dot Net Tricks';$scope.myName = $rootScope.name;});    </script></body></html>
```


### 21) What is scope hierarchy?

The **$scope** object used by views in AngularJS are organized into a hierarchy. There is a root scope, and the **$rootScope** can has one or more child scopes. Each controller has its own **$scope** (which is a child of the **$rootScope**), so whatever variables you create on $scope within controller, these variables are accessible by the view based on this controller.

For example, suppose you have two controllers: ParentController and ChildController as given below:

```html
<html><head>    <script src="lib/angular.js"></script>    <script>	var app = angular.module('ScopeChain', []); app.controller("parentController", function ($scope) {		$scope.managerName = 'Shailendra Chauhan';		$scope.$parent.companyName = 'Dot Net Tricks'; //attached to $rootScope
	});	app.controller("childController", function ($scope, $controller) {            $scope.teamLeadName = 'Deepak Chauhan';        });    </script></head><body ng-app="ScopeChain">	<div ng-controller="parentController ">		<table style="border:2px solid #e37112">
			<caption>Parent Controller</caption>
		<tr>             	<td>Manager Name</td>			<td>{{managerName}}</td>
		</tr>		<tr>             	<td>Company Name</td>			<td>{{companyName}}</td>
		</tr>		<tr>
			<td>				<table ng-controller="childController" style="border:2px solid #428bca">
					<caption>Child Controller</caption>				<tr>                         		<td>Team Lead Name</td>					<td>{{ teamLeadName }}</td> </tr>				<tr>					<td>Reporting To</td> <td>{{managerName}}</td>				</tr> <tr>                         		<td>Company Name</td>					<td>{{companyName}}</td> </tr>                		</table>              	</td>             </tr>        	</table>    </div></body></html>
```


### 22) What is the difference between $scope and scope?

The module factory methods like controller, directive, factory, filter, service, animation, config and run receive arguments through dependency injection (DI). In case of DI, you inject the **scope object** with the dollar prefix i.e. **$scope**. The reason is the **injected arguments** must match to the names of **injectable objects** followed by dollar ($) prefix.**For example**, you can inject the scope and element objects into a controller as given below:

```javascriptmodule.controller('MyController', function ($scope, $element) { // injected arguments });
```

When the methods like directive linker function don’t receive arguments through dependency injection, you just pass the **scope object** without using dollar prefix i.e. **scope**. The reason is the passing arguments are received by its caller.

```javascript
module.directive('myDirective', function () // injected arguments here {    return {        // linker function does not use dependency injection        link: function (scope, el, attrs) {	// the calling function will passes the three arguments to the linker: scope, element and attributes, in the same order	} };});
```

In the case of non-dependency injected arguments, you can give the name of injected objects as you wish. The above code can be re-written as:

```javascript
module.directive("myDirective", function () {
	return {        link: function (s, e, a) {            // s == scope	} };});// e == element
```

In short, in case of DI the **scope object** is received as **$scope** while in case of non-DI **scope object** is received as **scope** or with any name.


### 23) How AngularJS is compiled?

Angular's HTML compiler allows you to teach the browser new HTML syntax. The compiler allows you to attach new behaviors or attributes to any HTML element. Angular calls these behaviors as directives.
AngularJS compilation process takes place in the web browser; no server side or pre-compilation step is involved.
Angular uses $compiler service to compile your angular HTML page. The angular' compilation process begins after your HTML page (static DOM) is fully loaded. It happens in two phases:

  1. Compile - It traverse the DOM and collect all of the directives. The result is a linking function.
  2. Link - It combines the directives with a scope and produces a live view. Any changes in the scope model are reflected in the view, and any user interactions with the view are reflected in the scope model.

  The concept of compile and link comes from C language, where you first compile the code and then link it to actually execute it. The process is very much similar in AngularJS as well.

### 24) How AngularJS compilation is different from other JavaScript frameworks?

If you have worked on templates in other java script framework/library like backbone and jQuery, they process the template as a string and result as a string. You have to dumped this result string into the DOM where you wanted it with **innerHTML()**.

AngularJS process the template in another way. It directly works on HTML DOM rather than strings and manipulates it as required. It uses two way data-binding between model and view to sync your data.

### 25) How Directives are compiled?

It is important to note that Angular operates on DOM nodes rather than strings. Usually, you don't notice
this because when an html page loads, the web browser parses HTML into the DOM automatically. HTML compilation happens in three phases:

  1. The $compile traverses the DOM and looks for directives. For each directive it finds, it adds it to a list of directives.
  2. Once the entire DOM has been traversed, it will sort that list of directives by their priority. Then, each directive’s own compile function is executed, giving each directive the chance to modify the DOM itself. Each compile function returns a linking function, which is then composed into a combined linking function and returned.
  3. $compile links the template with the scope by calling the combined linking function from the previous step. This in turn will call the linking function of the individual directives, registering listeners on the elements and setting up $watch with the scope as each directive is configured to do.

The pseudo code for the above process is given below:

```javascript
var $compile = ...; // injected into your code
var scope = ...;
var parent = ...; // DOM element where the compiled template can be appended
var html = '<div ng-bind="exp"></div>';
// Step 1: parse HTML into DOM element
var template = angular.element(html);
// Step 2: compile the template
var linkFn = $compile(template);
// Step 3: link the compiled template with the scope.
var element = linkFn(scope);
// Step 4: Append to DOM (optional)
parent.appendChild(element);
```


### 26) What are Compile, Pre and Post linking in AngularJS?

* *Compile* – This compiles an HTML string or DOM into a template and produces a template function, which
can then be used to link scope and the template together.
Use the compile function to change the original DOM (template element) before AngularJS creates an instance of it and before a scope is created.

* *Post-Link* – This is executed after the child elements are linked. It is safe to do DOM transformation in the post- linking function.
Use the post-link function to execute logic, knowing that all child elements have been compiled and all pre-link and post-link functions of child elements have been executed.

* *Pre-Link* – This is executed before the child elements are linked. Not safe to do DOM transformation since the compiler linking function will fail to locate the correct elements for linking.
Use the pre-link function to implement logic that runs when AngularJS has already compiled the child elements, but before any of the child element's post-link functions have been called.


```html
<html>
  <head>
  <title>Compile vs Link</title>
  <script src="lib/angular.js"></script>
  <script type="text/javascript">
    var app = angular.module('app', []);

    function createDirective(name) {
      return function () {
        return {
          restrict: 'E',
          compile: function (tElem, tAttrs) {
            console.log(name + ': compile');

            return {
              pre: function (scope, iElem, attrs) {
                console.log(name + ': pre link');
              },
              post: function (scope, iElem, attrs) {
                console.log(name + ': post link');
              }
            }

          }
        }
      }
    };
    app.directive('levelOne', createDirective('level-One'));
    app.directive('levelTwo', createDirective('level-Two'));
    app.directive('levelThree', createDirective('level-Three'));
  </script>
  </head>
  <body ng-app="app">
    <level-one>
      <level-two>
        <level-three>
          Hello {{name}}
        </level-three>
      </level-two>
    </level-one>
  </body>
</html>
```

Output:

```shell
level-One: compile
level-Two: compile
level-Three: compile
level-One: pre link
level-Two: pre link
level-Three: pre link
level-Three: post link
level-Two: post link
level-One: post link
```

Example [link](https://jsfiddle.net/krosti/8bfao4em/).

### 27) What directives are user to show and hide HTML elements in AngularJS?

...

### 28) Explain directives ng-if, ng-switch and ng-repeat.
### 29) What are ng-repeat special variables?
### 30) How AngularJS handle data binding?

..

---

Thanks to many sites in particular to this guys:

 - http://www.slideshare.net/proshailendra/angular-js-interview-questions-answers-by-shailendra-chauhan
 - http://java.dzone.com/articles/angularjs-interview-questions
 - http://career.guru99.com/top-25-angular-js-interview-questions/
