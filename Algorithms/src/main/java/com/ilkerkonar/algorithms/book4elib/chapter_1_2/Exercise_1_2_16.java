package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import java.util.Objects;

public class Exercise_1_2_16 {
    public static void main(String[] args) {
        Rational r1 = new Rational( 1l, 3l );
        Rational r2 = new Rational( 3l, 8l );
        Rational r3 = new Rational( 3l, 4l );
        Rational r4 = new Rational( 5l, 6l );

        System.out.println( "r1 + r2 : " + r1.plus(r2));
        System.out.println( "r3 + r4 : " + r3.plus(r4));
        System.out.println( "r4 - r1 : " + r4.minus(r1));
        System.out.println( "r2 * r4 : " + r2.times(r4));
        System.out.println( "r3 / r1 : " + r3.dividedBy(r1));
    }
}

class Rational {

    private long numerator;

    private long denominator;

    public Rational(long numerator, long denominator) {
        this.numerator = numerator;
        this.denominator = denominator;
    }

    public long getNumerator() {
        return numerator;
    }

    public void setNumerator(long numerator) {
        this.numerator = numerator;
    }

    public long getDenominator() {
        return denominator;
    }

    public void setDenominator(long denominator) {
        this.denominator = denominator;
    }

    public Rational plus(Rational that) {
        long gcdValue = gcd(this.getDenominator(), that.getDenominator());
        long thisMultiplier = that.getDenominator() / gcdValue;
        long thatMultiplier = this.getDenominator() / gcdValue;

        return new Rational( this.getNumerator() * thisMultiplier + that.getNumerator() * thatMultiplier,
                this.getDenominator() * thisMultiplier );
    }

    public Rational minus(Rational that) {
        long gcdValue = gcd(this.getDenominator(), that.getDenominator());
        long thisMultiplier = that.getDenominator() / gcdValue;
        long thatMultiplier = this.getDenominator() / gcdValue;

        return new Rational( this.getNumerator() * thisMultiplier - that.getNumerator() * thatMultiplier,
                this.getDenominator() * thisMultiplier );
    }

    public Rational times(Rational that) {
        return new Rational( this.getNumerator() * that.getNumerator(),
                this.getDenominator() * that.getDenominator() );
    }

    public Rational dividedBy(Rational that) {
        return new Rational( this.getNumerator() * that.getDenominator(),
                this.getDenominator() * that.getNumerator() );
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Rational rational = (Rational) o;
        return numerator == rational.numerator &&
                denominator == rational.denominator;
    }

    @Override
    public String toString() {
        return numerator + "/" + denominator;
    }

    @Override
    public int hashCode() {
        return Objects.hash(numerator, denominator);
    }

    private long gcd(long n1, long n2) {
        if (n2 == 0) {
            return n1;
        }
        long r = n1 % n2;
        return gcd(n2, r);
    }
}
