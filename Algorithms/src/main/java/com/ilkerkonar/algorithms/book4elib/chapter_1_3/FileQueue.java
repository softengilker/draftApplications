package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class FileQueue {
    private int n;
    protected FileNode first;
    protected FileNode last;

    enum FileType { FILE, FOLDER }

    protected class FileNode {
        protected String name;
        protected FileNode next;
        protected FileType type;
        protected FileQueue folderList;
    }

    public FileQueue() {
        first = null;
        last  = null;
        n = 0;
    }

    public int size() {
        return n;
    }

    public void enqueueFirst(String name, FileType type, FileQueue folderList) {
        FileNode newNode = new FileNode();
        newNode.name = name;
        newNode.type = type;
        newNode.folderList = folderList;
        newNode.next = first;
        first = newNode;
        if (size() == 0) last = first;
        n++;
    }
}
