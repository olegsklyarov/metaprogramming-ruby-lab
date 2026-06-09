# Chapter 2 - The Object Model

## Что узнал:
- объект - это набор переменных данного экземпляра плюс ссылка на класс
- класс - это объект (экземпляр класса Class) плюс список методов экземпляров, плюс ссылка на superclass. Class - это подкласс Module.
- method lookup + self, the receiver and the ancestors chain
- the receiver - объект, который получает вызов
- the ancestors chain - цепочка посика метода
- self keyword - любая строка кода выполняется в рамках какого-либо объекта; self - ссылка на этот текущий объект.
- top-level context (main Object)
- Refinement - Создает временный слой методов, который виден только в определенной лексической области кода.
- https://minite.st (Minitest) - библиотека для написания юнит тестов в Ruby
- include / prepend
- можно писать юнит тесты в BDD стиле (describe / it should ...)
- можно открыть любой класс и добавить / переопределить в нем методы (например добавить String#to_alphanumeric)
- библиотеки для работы с деньгами
  - https://github.com/RubyMoney/money
  - https://github.com/RubyMoney/monetize (делает monkey-patch стандартных классов String, Numeric)
- gem awesome_print которая патчит Kenrel модуль добавляя туда метод `ap` https://github.com/awesome-print/awesome_print
- Open Classes опасны тем, что позволяют переопределить существующие методы Ruby и методы сторонних библиотек, а также могут вступить в конфликт с методами, которые появятся в будущих версия.
- переменные храняться в объекте, а методы - в классе.
- просмотреть список методов класса: String.instance_methods
- Class - это тоже объект, у него есть свои методы. Class.instance_methods(false) => [:allocate, :new, :superclass]
- Array.superclass        # => Object
- Object.superclass       # => BasicObject
- BasicObject.superclass  # => nil
- Class.superclass        # => Module❗️

## Что удивило:
- в Ruby конструкция class Foo ... — работает как "открыть класс"
- class Foo ... end открывает объект класса Foo, временно делает его текущим self и выполняет код блока в контексте этого объекта.

## TODO
- [ ] Разобрать разницу между Class и Module.
