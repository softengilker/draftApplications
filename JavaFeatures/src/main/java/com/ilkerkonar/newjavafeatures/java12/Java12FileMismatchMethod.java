package com.ilkerkonar.newjavafeatures.java12;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Java12FileMismatchMethod {
    public static void main(String[] args) throws IOException {
        Path file1Path = Files.createTempFile("file1", ".txt");
        Path file2Path = Files.createTempFile("file2", ".txt");
        Path file3Path = Files.createTempFile("file3", ".txt");

        Files.writeString(file1Path, "This is java12");
        Files.writeString(file2Path, "This is java12");
        Files.writeString(file3Path, "This is not java12");

        System.out.println("-1 Expected, because the file contents are identical: " + Files.mismatch(file1Path, file2Path));
        System.out.println("8 Expected, because the file contents are not identical and 8th character is different: "
                + Files.mismatch(file1Path, file3Path));
    }
}
