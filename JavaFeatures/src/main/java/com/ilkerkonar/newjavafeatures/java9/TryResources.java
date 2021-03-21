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

public class TryResources {
    public static void main(String[] args) throws Exception {
        // Before java9
        try ( ClosableClass cls = new ClosableClass() ) {
            cls.anyMethod();
        }

        // Java9
        ClosableClass cls2 = new ClosableClass();

        try (cls2) {
            cls2.anyMethod();
        }
    }
}
