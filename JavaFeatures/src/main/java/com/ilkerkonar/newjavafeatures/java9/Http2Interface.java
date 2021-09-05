package com.ilkerkonar.newjavafeatures.java9;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;

import static java.time.temporal.ChronoUnit.SECONDS;

public class Http2Interface {
    public static void main(String[] args) throws IOException, InterruptedException {
        HttpClient client = HttpClient.newHttpClient();

        HttpRequest req =
                HttpRequest.newBuilder(URI.create("http://www.sozcu.com"))
                        .header("User-Agent","Java")
                        .version(HttpClient.Version.HTTP_2)
                        .timeout(Duration.of(10, SECONDS))
                        .GET()
                        .build();

        HttpResponse<String> resp = client.send(req, HttpResponse.BodyHandlers.ofString());

        System.out.println( resp.body() );
    }
}
