import { Given, When, Then, Before, After } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { LoginPage } from '../pages/LoginPage';
import { chromium, Page, Browser } from '@playwright/test';

let page: Page;
let browser: Browser;
let loginPage: LoginPage;

Before({ timeout: 180000 }, async function() {
    browser = await chromium.launch({ 
        headless: false,
    });
    page = await browser.newPage();
    loginPage = new LoginPage(page);
});

Given('I am on the login page', { timeout: 60000 }, async function () { // Increase timeout for Given step
    await loginPage.navigate();
});

When('I click the forget password button', async function () {
    await loginPage.clickForgetPassword();
});

When('I click button email password reset link', async function () {
    await loginPage.resetLink();

});
When('I enter email {string}', async function (email: string) {
    await loginPage.enterEmail(email);
});

When('I enter password {string}', async function (password: string) {
    await loginPage.enterPassword(password);
});

When('I click the login button', async function () {
    await loginPage.clickLogin();
});

After({ timeout: 60000 }, async function() {
    await page.close();
    await browser.close();
});