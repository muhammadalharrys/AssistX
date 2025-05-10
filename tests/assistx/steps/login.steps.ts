import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { LoginPage } from '../pages/LoginPage';
import { Page } from '@playwright/test';

let page: Page;
let loginPage: LoginPage;

Given('I am on the login page', async function () {
    page = await browser.newPage();
    loginPage = new LoginPage(page);
    await loginPage.navigate();
});

When('I enter username {string}', async function (username: string) {
    await loginPage.enterUsername(username);
});

When('I enter password {string}', async function (password: string) {
    await loginPage.enterPassword(password);
});

When('I click the login button', async function () {
    await loginPage.clickLogin();
});

Then('I should be logged in successfully', async function () {
    expect(await loginPage.isWelcomeMessageVisible()).toBeTruthy();
});