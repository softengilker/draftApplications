package com.ilkerkonar.newjavafeatures.java9;

interface SampleInterface {
    void normalInterfaceMethod();

    // Java8
    default void defaultMethod1() {
        System.out.println( "Default interface method1 is called" );
    }

    default void defaultMethod2() {
        // Java9 allows you to call private method implementation in the interface
        defaultMethod2Implementation();
    }

    // Java9 allows you to add private method implementation to the interface
    private void defaultMethod2Implementation() {
        System.out.println( "Default interface method2 is called" );
    }
}

public class PrivateInterfaceMethods implements SampleInterface {

    public static void main(String[] args) {
        PrivateInterfaceMethods methods = new PrivateInterfaceMethods();

        methods.normalInterfaceMethod();
        methods.defaultMethod1();
        methods.defaultMethod2();
    }

    @Override
    public void normalInterfaceMethod() {
        System.out.println( "Normal interface method implementation is called" );
    }
}
