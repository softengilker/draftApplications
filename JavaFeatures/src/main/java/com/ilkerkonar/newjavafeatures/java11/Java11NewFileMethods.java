package com.ilkerkonar.newjavafeatures.java11;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Java11NewFileMethods {
    public static void main(String[] args) throws IOException {

        // File writeString, readString methods.
        File f = new File("tempFile.txt");
        Files.writeString(Path.of(f.getPath()), "Sample txt");
        System.out.println("The file content is :" + Files.readString(Path.of(f.getPath())));
    }
}
