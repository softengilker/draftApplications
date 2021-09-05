package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Stack;
import java.util.stream.Stream;

public class TextBuffer {
    private Stack<Character> mainBuffer;
    private Stack<Character> leftPositionBuffer;

    public TextBuffer() {
        mainBuffer = new Stack<>();
        leftPositionBuffer = new Stack<>();
    }

    public void insert(final char c) {
        mainBuffer.push(c);
    }

    public char get() {
        return (mainBuffer.size() > 0 ) ? mainBuffer.peek() : Character.MIN_VALUE;
    }

    public char delete() {
        return (mainBuffer.size() > 0 ) ? mainBuffer.pop() : Character.MIN_VALUE;
    }

    public void left(int k) {
        int positionCount = k > mainBuffer.size() ? mainBuffer.size() : k;

        for (int i = 0; i < positionCount; i++) {
            char popedFromMain = mainBuffer.pop();
            leftPositionBuffer.push(popedFromMain);
        }
    }

    public void right(int k) {
        int positionCount = k > leftPositionBuffer.size() ? leftPositionBuffer.size() : k;

        for (int i = 0; i < positionCount; i++) {
            char popedFromLeftPosition = leftPositionBuffer.pop();
            mainBuffer.push(popedFromLeftPosition);
        }
    }

    public int size() {
        return mainBuffer.size() + leftPositionBuffer.size();
    }

    public String getWholeText() {
        StringBuilder sb = new StringBuilder();

        mainBuffer.stream().forEach(a -> sb.append(a));
        sb.append("|");
        for (int i = leftPositionBuffer.size() - 1; i >= 0; i-- ) {
            sb.append(leftPositionBuffer.get(i));
        }

        return sb.toString();
    }
}
