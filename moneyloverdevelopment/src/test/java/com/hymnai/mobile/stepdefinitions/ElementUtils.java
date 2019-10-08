package com.hymnai.mobile.stepdefinitions;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import java.util.concurrent.TimeUnit;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import static com.hymnai.mobile.stepdefinitions.InitializeTest.driver;
import static com.hymnai.mobile.stepdefinitions.InitializeTest.elementIds;


public class ElementUtils {


    //Wait a button and check attributes
    public static void isElementDisplayedAndEnabled(String buttonText) {
        String id = elementIds.getProperty(buttonText);
        boolean isDisplayed = driver.findElement(By.id(id)).isDisplayed();
        Assert.assertEquals(isDisplayed, true);
        boolean isEnabled = driver.findElement(By.id(id)).isEnabled();
        Assert.assertEquals(isEnabled, true);
    }

    //Wait a button and click
    public static void userClicksElement(String elementText) {
        String id = elementIds.getProperty(elementText);
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOfElementLocated(By.id(id)));
        driver.findElementById(id).click();
    }

    //Enter values to a specific area
    public static void userEntersValuesToArea(String value, String area) {
        String id = elementIds.getProperty(area);
        boolean isDisplayed = driver.findElement(By.id(id)).isDisplayed();
        Assert.assertEquals(isDisplayed, true);
        driver.findElement(By.id(id)).sendKeys(value);
    }

    public static void userShouldNotBeAllowedToLeaveViewHelper(String view){
        //The main idea here is to check whether user leaved the activity by checking visibility of an element located in the current activity
        //Implicitly wait because I want to be sure that i gave enough time after user clicks register
        driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
        String id = elementIds.getProperty(view);
        boolean isDisplayed = driver.findElement(By.id(id)).isDisplayed();
        Assert.assertEquals(isDisplayed, true);
        System.out.println(isDisplayed);
    }

}