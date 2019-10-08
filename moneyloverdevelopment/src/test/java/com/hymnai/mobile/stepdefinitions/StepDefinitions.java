package com.hymnai.mobile.stepdefinitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static com.hymnai.mobile.stepdefinitions.ElementUtils.*;

public class StepDefinitions {

    @Then("^button \"([^\"]*)\" should be displayed and enabled$")
    public static void isButtonDisplayedAndEnabled(String buttonText) {
        isElementDisplayedAndEnabled(buttonText);
    }

    @Then("^label \"([^\"]*)\" should be displayed and enabled$")
    public static void isTitleDisplayedAndEnabled(String titleText) {
        isElementDisplayedAndEnabled(titleText);
    }

    @Then("^message \"([^\"]*)\" should be displayed and enabled$")
    public static void isMessageDisplayedAndEnabled(String titleText) {
        isElementDisplayedAndEnabled(titleText);
    }

    @Given("^user clicks \"([^\"]*)\" button$")
    public static void userClicksButton(String elementText) {
        userClicksElement(elementText);
    }

    @Given("^user clicks \"([^\"]*)\" link")
    public static void userClicksLink(String linkText) {
        userClicksElement(linkText);
    }

    //Enter values to a specific area
    @When("^user enters \"([^\"]*)\" to \"([^\"]*)\" area$")
    public static void user_enters_values_to_area(String value, String area) {userEntersValuesToArea(value, area);}


    @Given("^user launches the application$")
    public void user_launches_the_application() {
    }

  @Then("user should not be allowed to leave {string} view")
  public void userShouldNotBeAllowedToLeaveView(String view) {
      userShouldNotBeAllowedToLeaveViewHelper(view);
  }
}