package com.hymnai.mobile.stepdefinitions;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Properties;

public class InitializeTest {

    protected static AppiumDriver<MobileElement> driver;
    protected static Properties elementIds = new Properties();
    protected static WebDriverWait webDriverWait;

    public static int WAIT_TIME_OUT = 10; // in seconds

    @Before
    public void before() {

        try {

            driver = initializeDriver();
            webDriverWait = new WebDriverWait(driver, WAIT_TIME_OUT);
            loadElementIds();

        } catch (MalformedURLException e) {
            e.printStackTrace();
        }

        //Added 1 second wait so that the app loads completely before starting with element identification
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @After
    public void after() {
        driver.resetApp();
        driver.quit();
    }

    private AppiumDriver<MobileElement> initializeDriver() throws MalformedURLException {
        //Set the Desired Capabilities
        DesiredCapabilities caps = new DesiredCapabilities();
        caps.setCapability("deviceName", "Android Emulator");
        caps.setCapability("udid", "emulator-5554"); //Give Device ID of your mobile phone
        caps.setCapability("platformName", "Android");
        caps.setCapability("platformVersion", "9.0");
        caps.setCapability("appPackage", "com.bookmark.money");
        caps.setCapability("appActivity", "com.zoostudio.moneylover.ui.ActivitySplash");
        caps.setCapability("noReset", "false");

        //Instantiate Appium Driver
        return new AppiumDriver<>(new URL("http://0.0.0.0:4723/wd/hub"), caps);
    }

    private void loadElementIds() {

        try {

            elementIds.load(getClass().getResourceAsStream("/elementIds.properties"));

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
