Source : https://github.com/winterbe/better-java


Java is one of the most popular programming languages around, but no one seems to enjoy using it. Well, Java is actually an alright programming language, and since Java 8 came out recently, I decided to compile a list of libraries, practices, and tools to make using Java better. <br>

This article was originally posted on my blog.<br>
Style
<br>
Traditionally, Java was programmed in a very verbose enterprise JavaBean style. The new style is much cleaner, more correct, and easier on the eyes.
Structs<br>

One of the simplest things we as programmers do is pass around data. The traditional way to do this is to define a JavaBean:

public class DataHolder {
    private String data;

    public DataHolder() {
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getData() {
        return this.data;
    }
}

This is verbose and wasteful. Even if your IDE automatically generated this code, it's a waste. So, don't do this.<br>

Instead, I prefer the C struct style of writing classes that merely hold data:<br>

public class DataHolder {
    public final String data;

    public DataHolder(String data) {
        this.data = data;
    }
}

This is a reduction in number of lines of code by a half. Further, this class is immutable unless you extend it, so we can reason about it easier as we know that it can't be changed.<br>

If you're storing objects like Map or List that can be modified easily, you should instead use ImmutableMap or ImmutableList, which is discussed in the section about immutability.<br>
The Builder Pattern<br>

If you have a rather complicated object that you want to build a struct for, consider the Builder pattern.<br>

You make a subclass in your object which will construct your object. It uses mutable state, but as soon as you call build, it will emit an immutable object.<br>

Imagine we had a more complicated DataHolder. The builder for it might look like:

public class ComplicatedDataHolder {
    public final String data;
    public final int num;
    // lots more fields and a constructor

    public static class Builder {
        private String data;
        private int num;
        
        public Builder data(String data) {
            this.data = data;
            return this;
        }

        public Builder num(int num) {
            this.num = num;
            return this;
        }

        public ComplicatedDataHolder build() {
            return new ComplicatedDataHolder(data, num); // etc
        }  
    }
}

Then to use it:
==================

final ComplicatedDataHolder cdh = new ComplicatedDataHolder.Builder()
    .data("set this")
    .num(523)
    .build();
<br>
There are better examples of Builders elsewhere but this should give you a taste for what it's like. This ends up with a lot of the boilerplate we were trying to avoid, but it gets you immutable objects and a very fluent interface.
Dependency injection<br>

This is more of a software engineering section than a Java section, but one of the best ways to write testable software is to use dependency injection (DI). Because Java strongly encourages OO design, to make testable software, you need to use DI.<br>

In Java, this is typically done with the Spring Framework. It has a either code-based wiring or XML configuration-based wiring. If you use the XML configuration, it's important that you don't overuse Spring because of its XML-based configuration format. There should be absolutely no logic or control structures in XML. It should only inject dependencies.<br>

Good alternatives to using Spring is Google and Square's Dagger library or Google's Guice. They don't use Spring's XML configuration file format, and instead they put the injection logic in annotations and in code.<br>
Avoid Nulls <br>

Try to avoid using nulls when you can. Do not return null collections when you should have instead returned an empty collection. If you're going to use null, consider the @Nullable annotation. IntelliJ IDEA has built-in support for the @Nullable annotation. <br>

If you're using Java 8, you can use the excellent new Optional type. If a value may or may not be present, wrap it in an Optional class like this: <br>

public class FooWidget {
    private final String data;
    private final Optional<Bar> bar;

    public FooWidget(String data) {
        this(data, Optional.empty());
    }

    public FooWidget(String data, Optional<Bar> bar) {
        this.data = data;
        this.bar = bar;
    }

    public Optional<Bar> getBar() {
        return bar;
    }
}

So now it's clear that data will never be null, but bar may or may not be present. Optional has methods like isPresent, which may make it feel like not a lot is different from just checking null. But it allows you to write statements like:

final Optional<FooWidget> fooWidget = maybeGetFooWidget();
final Baz baz = fooWidget.flatMap(FooWidget::getBar)
                         .flatMap(BarWidget::getBaz)
                         .orElse(defaultBaz);

Which is much better than chained if null checks. The only downside of using Optional is that the standard library doesn't have good Optional support, so dealing with nulls is still required there.
Immutable-by-default <br>

Unless you have a good reason to make them otherwise, variables, classes, and collections should be immutable.

Variable references can be made immutable with final:

final FooWidget fooWidget;
if (condition()) {
    fooWidget = getWidget();
} else {
    try {
        fooWidget = cachedFooWidget.get();
    } catch (CachingException e) {
        log.error("Couldn't get cached value", e);
        throw e;
    }
}
// fooWidget is guaranteed to be set here <br>

Now you can be sure that fooWidget won't be accidentally reassigned. The final keyword works with if/else blocks and with try/catch blocks. Of course, if the fooWidget itself isn't immutable you could easily mutate it. <br>

Collections should, whenever possible, use the Guava ImmutableMap, ImmutableList, or ImmutableSet classes. These have builders so that you can build them up dynamically and then mark them immutable by calling the build method. <br>

Classes should be made immutable by declaring fields immutable (via final) and by using immutable collections. Optionally, you can make the class itself final so that it can't be extended and made mutable. <br>
Avoid lots of Util classes <br>

Be careful if you find yourself adding a lot of methods to a Util class. <br>

public class MiscUtil {
    public static String frobnicateString(String base, int times) {
        // ... etc
    }

    public static void throwIfCondition(boolean condition, String msg) {
        // ... etc
    }
}

These classes, at first, seem attractive because the methods that go in them don't really belong in any one place. So you throw them all in here in the name of code reuse. <br>

The cure is worse than the disease. Put these classes where they belong, or if you must have common methods like this, consider Java 8's default methods on interfaces. Then you could lump common actions into interfaces. And, since they're interfaces, you can implement multiple of them. <br>

public interface Thrower {
    default void throwIfCondition(boolean condition, String msg) {
        // ...
    }

    default void throwAorB(Throwable a, Throwable b, boolean throwA) {
        // ...
    }
}

Then every class which needs it can simply implement this interface.
Formatting <br>

Formatting is so much less important than most programmers make it out to be. Does consistency show that you care about your craft and does it help others read? Absolutely. But let's not waste a day adding spaces to if blocks so that it "matches". <br>

If you absolutely need a code formatting guide, I highly recommend Google's Java Style guide. The best part of that guide is the Programming Practices section. Definitely worth a read. <br>
Javadoc <br>

Documenting your user facing code is important. And this means using examples and using sensible descriptions of variables, methods, and classes. <br>

The corollary of this is to not document what doesn't need documenting. If you don't have anything to say about what an argument is, or if it's obvious, don't document it. Boilerplate documentation is worse than no documentation at all, as it tricks your users into thinking that there is documentation. <br>
Streams <br>

Java 8 has a nice stream and lambda syntax. You could write code like this:

final List<String> filtered = list.stream()
    .filter(s -> s.startsWith("s"))
    .map(s -> s.toUpperCase())
    .collect(Collectors.toList());

Instead of this:

final List<String> filtered = new ArrayList<>();
for (String str : list) {
    if (str.startsWith("s") {
        filtered.add(str.toUpperCase());
    }
}

This allows you to write more fluent code, which is more readable.
Deploying <br>

Deploying Java properly can be a bit tricky. There are two main ways to deploy Java nowadays: use a framework or use a home grown solution that is more flexible. <br>
Frameworks <br>

Because deploying Java isn't easy, frameworks have been made which can help. Two of the best are Dropwizard and Spring Boot. The Play framework can also be considered one of these deployment frameworks as well. <br>

All of them try to lower the barrier to getting your code out the door. They're especially helpful if you're new to Java or if you need to get things done fast. Single JAR deployments are just easier than complicated WAR or EAR deployments. <br>

However, they can be somewhat inflexible and are rather opinionated, so if your project doesn't fit with the choices the developers of your framework made, you'll have to migrate to a more hand-rolled configuration. <br>
Maven <br>

Good alternative: Gradle. <br>

Maven is still the standard tool to build, package, and run your tests. There are alternatives, like Gradle, but they don't have the same adoption that Maven has. If you're new to Maven, you should start with Maven by Example. <br>

I like to have a root POM with all of the external dependencies you want to use. It will look something like this. This root POM has only one external dependency, but if your product is big enough, you'll have dozens. Your root POM should be a project on its own: in version control and released like any other Java project. <br>

If you think that tagging your root POM for every external dependency change is too much, you haven't wasted a week tracking down cross project dependency errors. <br>

All of your Maven projects will include your root POM and all of its version information. This way, you get your company's selected version of each external dependency, and all of the correct Maven plugins. If you need to pull in external dependencies, it works just like this: <br>

<dependencies>
    <dependency>
        <groupId>org.third.party</groupId>
        <artifactId>some-artifact</artifactId>
    </dependency>
</dependencies>

If you want internal dependencies, that should be managed by each individual project's section. Otherwise it would be difficult to keep the root POM version number sane. <br>
Dependency Convergence <br>

One of the best parts about Java is the massive amount of third party libraries which do everything. Essentially every API or toolkit has a Java SDK and it's easy to pull it in with Maven. <br>

And those Java libraries themselves depend on specific versions of other libraries. If you pull in enough libraries, you'll get version conflicts, that is, something like this: <br>

Foo library depends on Bar library v1.0
Widget library depends on Bar library v0.9

Which version will get pulled into your project? <br>

With the Maven dependency convergence plugin, the build will error if your dependencies don't use the same version. Then, you have two options for solving the conflict: <br>

    Explicitly pick a version for Bar in your dependencyManagement section
    Exclude Bar from either Foo or Widget

The choice of which to choose depends on your situation: if you want to track one project's version, then exclude makes sense. On the other hand, if you want to be explicit about it, you can pick a version, although you'll need to update it when you update the other dependencies. <br>
Continuous Integration <br>

Obviously you need some kind of continuous integration server which is going to continuously build your SNAPSHOT versions and tag builds based on git tags. <br>

Jenkins and Travis-CI are natural choices. <br>

Code coverage is useful, and Cobertura has a good Maven plugin and CI support. There are other code coverage tools for Java, but I've used Cobertura. <br>
Maven repository <br>

You need a place to put your JARs, WARs, and EARs that you make, so you'll need a repository. <br>

Common choices are Artifactory and Nexus. Both work, and have their own pros and cons. <br>

You should have your own Artifactory/Nexus installation and mirror your dependencies onto it. This will stop your build from breaking because some upstream Maven repository went down. <br>
Configuration management <br>

So now you've got your code compiled, your repository set up, and you need to get your code out in your development environment and eventually push it to production. Don't skimp here, because automating this will pay dividends for a long time. <br>

Chef, Puppet, and Ansible are typical choices. I've written an alternative called Squadron, which I, of course, think you should check out because it's easier to get right than the alternatives. <br>

Regardless of what tool you choose, don't forget to automate your deployments. <br>
Libraries <br>

Probably the best feature about Java is the extensive amount of libraries it has. This is a small collection of libraries that are likely to be applicable to the largest group of people. <br>
Missing Features <br>

Java's standard library, once an amazing step forward, now looks like it's missing several key features.
Apache Commons <br>

The Apache Commons project has a bunch of useful libraries. <br>

Commons Codec has many useful encoding/decoding methods for Base64 and hex strings. Don't waste your time rewriting those. <br>

Commons Lang is the go-to library for String manipulation and creation, character sets, and a bunch of miscellaneous utility methods. <br>

Commons IO has all the File related methods you could ever want. It has FileUtils.copyDirectory, FileUtils.writeStringToFile, IOUtils.readLines and much more. <br>
Guava <br>

Guava is Google's excellent here's-what-Java-is-missing library. It's almost hard to distill everything that I like about this library, but I'm going to try. <br>

Cache is a simple way to get an in-memory cache that can be used to cache network access, disk access, memoize functions, or anything really. Just implement a CacheBuilder which tells Guava how to build your cache and you're all set! <br>

Immutable collections. There's a bunch of these: ImmutableMap, ImmutableList, or even ImmutableSortedMultiSet if that's your style.

I also like writing mutable collections the Guava way:

// Instead of
final Map<String, Widget> map = new HashMap<>();

// You can use
final Map<String, Widget> map = Maps.newHashMap();

There are static classes for Lists, Maps, Sets and more. They're cleaner and easier to read.

If you're stuck with Java 6 or 7, you can use the Collections2 class, which has methods like filter and transform. They allow you to write fluent code without Java 8's stream support.

Guava has simple things too, like a Joiner that joins strings on separators and a class to handle interrupts by ignoring them.
Gson <br>

Google's Gson library is a simple and fast JSON parsing library. It works like this: 
================================

final Gson gson = new Gson();
final String json = gson.toJson(fooWidget);

final FooWidget newFooWidget = gson.fromJson(json, FooWidget.class);

It's really easy and a pleasure to work with. The Gson user guide has many more examples.
Java Tuples

One of my on going annoyances with Java is that it doesn't have tuples built into the standard library. Luckily, the Java tuples project fixes that.

It's simple to use and works great:
================================
Pair<String, Integer> func(String input) {
    // something...
    return Pair.with(stringResult, intResult);
}

Joda-Time:
================================

Joda-Time is easily the best time library I've ever used. Simple, straightforward, easy to test. What else can you ask for?

You only need this if you're not yet on Java 8, as that has its own new date time library that doesn't suck.
Lombok

Lombok is an interesting library. Through annotations, it allows you to reduce the boilerplate that Java suffers from so badly.

Want setters and getters for your class variables? Simple:
================================

public class Foo {
    @Getter @Setter private int var;
}

Now you can do this:

final Foo foo = new Foo();
foo.setVar(5);

And there's so much more. I haven't used Lombok in production yet, but I can't wait to.
Play framework

Good alternatives: Jersey or Spark

There are two main camps for doing RESTful web services in Java: JAX-RS and everything else.

JAX-RS is the traditional way. You combine annotations with interfaces and implementations to form the web service using something like Jersey. What's nice about this is you can easily make clients out of just the interface class.

The Play framework is a radically different take on web services on the JVM: you have a routes file and then you write the classes referenced in those routes. It's actually an entire MVC framework, but you can easily use it for just REST web services.

It's available for both Java and Scala. It suffers slightly from being Scala-first, but it's still good to use in Java.

If you're used to micro-frameworks like Flask in Python, Spark will be very familiar. It works especially well with Java 8.
SLF4J

There are a lot of Java logging solutions out there. My favorite is SLF4J because it's extremely pluggable and can combine logs from many different logging frameworks at the same time. Have a weird project that uses java.util.logging, JCL, and log4j? SLF4J is for you.

The two-page manual is pretty much all you'll need to get started.
jOOQ

I dislike heavy ORM frameworks because I like SQL. So I wrote a lot of JDBC templates and it was sort of hard to maintain. jOOQ is a much better solution.

It lets you write SQL in Java in a type safe way:
================================

// Typesafely execute the SQL statement directly with jOOQ
Result<Record3<String, String, String>> result = 
create.select(BOOK.TITLE, AUTHOR.FIRST_NAME, AUTHOR.LAST_NAME)
    .from(BOOK)
    .join(AUTHOR)
    .on(BOOK.AUTHOR_ID.equal(AUTHOR.ID))
    .where(BOOK.PUBLISHED_IN.equal(1948))
    .fetch();

Using this and the DAO pattern, you can make database access a breeze.
Testing

Testing is critical to your software. These packages help make it easier.
jUnit 4

jUnit needs no introduction. It's the standard tool for unit testing in Java.

But you're probably not using jUnit to its full potential. jUnit supports parametrized tests, rules to stop you from writing so much boilerplate, theories to randomly test certain code, and assumptions.
jMock

If you've done your dependency injection, this is where it pays off: mocking out code which has side effects (like talking to a REST server) and still asserting behavior of code that calls it.

jMock is the standard mocking tool for Java. It looks like this:
================================
public class FooWidgetTest {
    private Mockery context = new Mockery();

    @Test
    public void basicTest() {
        final FooWidgetDependency dep = context.mock(FooWidgetDependency.class);
        
        context.checking(new Expectations() {{
            oneOf(dep).call(with(any(String.class)));
            atLeast(0).of(dep).optionalCall();
        }});

        final FooWidget foo = new FooWidget(dep);

        Assert.assertTrue(foo.doThing());
        context.assertIsSatisfied();
    }
}

This sets up a FooWidgetDependency via jMock and then adds expectations. We expect that dep's call method will be called once with some String and that dep's optionalCall method will be called zero or more times.

If you have to set up the same dependency over and over, you should probably put that in a test fixture and put assertIsSatisfied in an @After fixture.
AssertJ

Do you ever do this with jUnit?
================================
final List<String> result = some.testMethod();
assertEquals(4, result.size());
assertTrue(result.contains("some result"));
assertTrue(result.contains("some other result"));
assertFalse(result.contains("shouldn't be here"));

This is just annoying boilerplate. AssertJ solves this. You can transform the same code into this:

assertThat(some.testMethod()).hasSize(4)
                             .contains("some result", "some other result")
                             .doesNotContain("shouldn't be here");

This fluent interface makes your tests more readable. What more could you want?
Tools
IntelliJ IDEA

Good alternatives: Eclipse and Netbeans:
================================

The best Java IDE is IntelliJ IDEA. It has a ton of awesome features, and is really the main thing that makes the verbosity of Java bareable. Autocomplete is great, the inspections are top notch, and the refactoring tools are really helpful.

The free community edition is good enough for me, but there are loads of great features in the Ultimate edition like database tools, Spring Framework support and Chronon.
Chronon

One of my favorite features of GDB 7 was the ability to travel back in time when debugging. This is possible with the Chronon IntelliJ plugin when you get the Ultimate edition.

You get variable history, step backwards, method history and more. It's a little strange to use the first time, but it can help debug some really intricate bugs, Heisenbugs and the like.
JRebel

Continuous integration is often a goal of software-as-a-service products. What if you didn't even need to wait for the build to finish to see code changes live?

That's what JRebel does. Once you hook up your server to your JRebel client, you can see changes on your server instantly. It's a huge time savings when you want to experiment quickly.
The Checker Framework

Java's type system is pretty weak. It doesn't differentiate between Strings and Strings that are actually regular expressions, nor does it do any taint checking. However, the Checker Framework does this and more.

It uses annotations like @Nullable to check types. You can even define your own annotations to make the static analysis done even more powerful.
Eclipse Memory Analyzer

Memory leaks happen, even in Java. Luckily, there are tools for that. The best tool I've used to fix these is the Eclipse Memory Analyzer. It takes a heap dump and lets you find the problem.

There's a few ways to get a heap dump for a JVM process, but I use jmap:

$ jmap -dump:live,format=b,file=heapdump.hprof -F 8152
Attaching to process ID 8152, please wait...
Debugger attached successfully.
Server compiler detected.
JVM version is 23.25-b01
Dumping heap to heapdump.hprof ...
... snip ...
Heap dump file created

Then you can open the heapdump.hprof file with the Memory Analyzer and see what's going on fast.
Resources

Resources to help you become a Java master.
Books

    Effective Java
    Java Concurrency in Practice
