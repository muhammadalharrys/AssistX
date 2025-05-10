import { Page } from '@playwright/test';

export class LoginPage {
    constructor(private page: Page) {}

    async navigate(): Promise<void> {
        await this.page.goto('https://dsh-poc.assistxvision.ai/login');
        await this.page.waitForLoadState()
    }

    async enterEmail(email: string): Promise<void> {
        await this.page.fill('//input[@type="email"]', email); // Directly using XPath
    }

    async enterPassword(password: string): Promise<void> {
        await this.page.fill('#password', password); // Directly using CSS selector
    }

    async clickLogin(): Promise<void> {
        await this.page.click("//button[normalize-space(text())='Log in']");
    }

    async clickForgetPassword(): Promise<void> {
        await this.page.click("//small[normalize-space(text())='Forgot Password ?']");
    }

    async resetLink(): Promise<void> {
        await this.page.click("//button[normalize-space(text())='Email Password Reset Link']");
    }
}