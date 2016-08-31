package com.example;

import org.junit.Test;
import org.junit.Ignore;
import static org.junit.Assert.assertEquals;

public class LibraryTest {

    String message = "Hello World!";

    @Test
    public void testPrintMessage() {
        String libraryMessage = Library.AppendWorld(Library.Hello);
        assertEquals(message, libraryMessage);
    }
}