package com.ilkerkonar.newjavafeatures.java9;

class ClosableClass implements AutoCloseable {

    @Override
    public void close() throws Exception {
        System.out.println( "Closed" );
    }

    public void anyMethod() {
        System.out.println( "Any method" );
    }
}

class ClosableClass2 implements AutoCloseable {

    @Override
    public void close() throws Exception {
        System.out.println( "Closed2" );
    }

    public void anyMethod() {
        System.out.println( "Any method2" );
    }
}

public class TryResources {
    public static void main(String[] args) throws Exception {

        System.out.println( "Before java9:" );

        // Before java9
        try ( ClosableClass cls = new ClosableClass() ) {
            cls.anyMethod();
        }

        System.out.println( "Java9:" );

        // Java9
        ClosableClass cls2 = new ClosableClass();

        try (cls2) {
            cls2.anyMethod();
        }

        System.out.println( "Multiple closeable classes in Java9:" );

        // Java9 Multiple closable classes
        ClosableClass2 cls3 = new ClosableClass2();

        try (cls2; cls3) {
            cls2.anyMethod();
            cls3.anyMethod();
        }
    }
}
