package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.io.File;
import java.util.Arrays;

public class Exercise_1_3_43 {
    public static void main(String[] args) {
        String folderPath = "/home/ilkerkonar/Dev/repo/git/personalAssets/personalassetsui/src";

        FileQueue fileQueue = generateQueueForFolder( folderPath );

        printFolder(fileQueue, "");
    }

    private static FileQueue generateQueueForFolder(final String folderPath ) {

        File rootFile = new File( folderPath );
        FileQueue fileQueue = new FileQueue();

        Arrays.stream(rootFile.listFiles()).forEach(
                fileItem -> {
                    if ( fileItem.isFile() ) {
                        fileQueue.enqueueFirst( fileItem.getName(), FileQueue.FileType.FILE, null );
                    } else if ( fileItem.isDirectory() ) {
                        FileQueue folderFileQueue = generateQueueForFolder( fileItem.getAbsolutePath() );
                        fileQueue.enqueueFirst( fileItem.getName(), FileQueue.FileType.FOLDER, folderFileQueue );
                    }
                }
        );

        return fileQueue;
    }

    private static void printFolder( final FileQueue fileQueue, final String indentStr ) {
        FileQueue.FileNode fileNode = fileQueue.first;
        while ( fileNode != null ) {
            System.out.println();
            System.out.print( indentStr );
            System.out.print( fileNode.name );
            if ( fileNode.folderList != null ) {
                printFolder( fileNode.folderList, indentStr + "  " );
            }
            fileNode = fileNode.next;
        }
    }
}
