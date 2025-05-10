import { Page } from '@playwright/test';

export class LoginPage {
    private readonly locators = {
        usernameInput: '#username',
        passwordInput: '#password',
        loginButton: '#loginButton',
        welcomeMessage: '.welcome-message'
    };

    constructor(private page: Page) {}

    async navigate(): Promise<void> {
        await this.page.goto('https://example.com/login');
    }

    async enterUsername(username: string): Promise<void> {
        await this.page.fill(this.locators.usernameInput, username);
    }

    async enterPassword(password: string): Promise<void> {
        await this.page.fill(this.locators.passwordInput, password);
    }

    async clickLogin(): Promise<void> {
        await this.page.click(this.locators.loginButton);
    }

    async isWelcomeMessageVisible(): Promise<boolean> {
        return await this.page.locator(this.locators.welcomeMessage).isVisible();
    }
}