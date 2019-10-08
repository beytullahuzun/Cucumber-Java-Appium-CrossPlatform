package com.hymnai.mobile.stepdefinitions;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        dryRun = false,
        glue = "com.hymnai.mobile.stepdefinitions",
        strict = true,
        features = ".",
        plugin = {"pretty", "junit:output.xml"},
        monochrome = true,
        tags = {"@Tag"}
)

public class RunTest {
}

