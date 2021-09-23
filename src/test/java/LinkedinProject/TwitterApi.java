package LinkedinProject;

import io.restassured.RestAssured;
import org.junit.Test;


public class TwitterApi {
    String API_TWITTER_ENDPOINT = "https://api.twitter.com";
    String API_TWITTER_STREAM_PATH = "/2/tweets/search/stream";
    String API_TWITTER_STREAM_RULE_PATH = "/2/tweets/search/stream/rules";
    String bearerToken = "";

    @Test
    public void test() {
        RestAssured.baseURI = API_TWITTER_ENDPOINT;
    }


}
