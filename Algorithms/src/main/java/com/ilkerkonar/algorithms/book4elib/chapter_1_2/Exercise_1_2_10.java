package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import com.ilkerkonar.algorithms.util.book4elib.Interval1D;
import com.ilkerkonar.algorithms.util.book4elib.Interval2D;
import com.ilkerkonar.algorithms.util.book4elib.StdDraw;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Supplier;

public class Exercise_1_2_10 {
    public static void main(String[] args) {
        VisualCounter counter = new VisualCounter(5, 4);
        counter.increment();
        System.out.println( "Tally : " + counter.tally());
        counter.increment();
        System.out.println( "Tally : " + counter.tally());
        counter.increment();
        System.out.println( "Tally : " + counter.tally());
        counter.increment();
        System.out.println( "Tally : " + counter.tally());
        counter.increment();
        System.out.println( "Tally : " + counter.tally());
        counter.decrement();
        System.out.println( "Tally : " + counter.tally());
        counter.increment();
        System.out.println( "Tally : " + counter.tally());
        counter.visualize();
    }
}

class VisualCounter {

    private int count = 0;         // current value

    private int maxNumberOfOperations;

    private int operationCount;

    private int maxValue;

    private List<Integer> tallyChanges = new ArrayList<Integer>();

    /**
     * @param n Maximum number of operations
     * @param m Maximum absolute value for the counter
     */
    public VisualCounter(final int n, final int m) {
        maxNumberOfOperations = n;
        maxValue = m;
    }

    /**
     * Increments the counter by 1.
     */
    public void increment() {
        if ( maxValue <= count ) {
            System.out.println( "Reach at the max value");
        } else {
            operation( () -> count++);
        }
    }

    /**
     * Decrements the counter by 1.
     */
    public void decrement() {
        operation( () -> count--);
    }

    public void operation(final Runnable runnable) {
        if ( maxNumberOfOperations <= operationCount ) {
            System.out.println( "Reach at the max operation count");
        } else {
            runnable.run();
            operationCount++;
            tallyChanges.add( count );
        }
    }

    public void visualize() {
        StdDraw.setCanvasSize(800, 400);
        StdDraw.setPenRadius(0.008);
        StdDraw.setPenColor(StdDraw.BLUE);
        StdDraw.setXscale(0, 800);
        StdDraw.setYscale(0, 400);

        for ( int i = 0; i < tallyChanges.size(); i++) {
            Interval1D xInterval = new Interval1D(i * 10, i * 10 + 10);
            Interval1D yInterval = new Interval1D(0, tallyChanges.get(i) * 30);

            Interval2D box = new Interval2D(xInterval, yInterval);
            box.draw();
        }
    }

    /**
     * Returns the current value of this counter.
     *
     * @return the current value of this counter
     */
    public int tally() {
        return count;
    }
}
