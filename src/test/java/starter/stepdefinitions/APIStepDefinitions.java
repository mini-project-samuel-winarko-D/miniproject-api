package starter.stepdefinitions;

import io.cucumber.core.gherkin.vintage.internal.gherkin.ast.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.And;
import io.restassured.response.Response;
import static io.restassured.module.jsv.JsonSchemaValidator.matchesJsonSchemaInClasspath;
import net.serenitybdd.rest.SerenityRest;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.rest.abilities.CallAnApi;
import net.serenitybdd.screenplay.rest.interactions.Delete;
import net.serenitybdd.screenplay.rest.interactions.Get;
import net.serenitybdd.screenplay.rest.interactions.Post;
import net.serenitybdd.screenplay.rest.interactions.Put;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


public class APIStepDefinitions {
    String baseURL = "https://altashop-api.fly.dev/api/";
    User user = new User();

    @Given("{actor} call an api {string} with method {string}")
    public void callApi(Actor actor, String path, String method) {
        actor.whoCan(CallAnApi.at(baseURL));
        switch (method) {
            case "GET":
                actor.attemptsTo(Get.resource(path));
                break;
            case "POST":
                actor.attemptsTo(Post.to(path));
                break;
            case "PUT":
                actor.attemptsTo(Put.to(path));
                break;
            case "DELETE":
                actor.attemptsTo(Delete.from(path));
                break;
            default:
                throw new IllegalStateException("Unknown method");
        }
    }

    @Then("{actor} verify response is match with json schema {string}")
    public void userVerifyResponseIsMatchWithJsonSchema(Actor actor, String schema) {
        Response response = SerenityRest.lastResponse();
    }

    @Then("{actor} verify code is {int}")
    public void userVerifyCodeIs(Actor actor, int statusCode) {
        Response response = SerenityRest.lastResponse();
    }

    @Given("{actor} call an api {string} with method {string} with payload below")
    public void callAnAPI(Actor actor, String path, String method, DataTable table) {
        actor.whoCan(CallAnApi.at(baseURL));

    }

    @And("{actor} get auth token")
    public void userGetAuthToken(Actor actor) {
    }

    @Given("{actor} get user information")
    public void userGetUserInformation(Actor actor) {
    }

    @Given("{actor} create a new category")
    public void userCreateANewCategory(Actor actor) {
    }

    @Given("{actor} get category by ID")
    public void userGetCategoryByID(Actor actor) {
    }

    @Given("{actor} call an api {string} with method {string}")
    public void userCallAnApiWithMethod(Actor actor, String path, String method) {
    }

    @Given("{actor} create a new product")
    public void userCreateANewProduct(Actor actor) {
    }

    @Given("{actor} get product by ID")
    public void userGetProductByID(Actor actor) {
    }

    @Given("{actor} assign rating to product")
    public void userAssignRatingToProduct(Actor actor) {
    }

    @Given("{actor} create a comment to product")
    public void userCreateACommentToProduct(Actor actor) {
    }

    @Given("{actor} create a new order")
    public void userCreateANewOrder(Actor actor) {
    }

    @Given("{actor} get all order")
    public void userGetAllOrder(Actor actor) {
    }

    @Given("{actor} get all order by ID")
    public void userGetAllOrderByID(Actor actor) {
    }

}
