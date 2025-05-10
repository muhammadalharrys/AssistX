import { PlaywrightTestConfig } from '@playwright/test';

const config: PlaywrightTestConfig = {
  use: {
    headless: false,
    slowMo: 1000,
    launchOptions: {
      args: ['--start-maximized']
    }
  },
  timeout: 60000, // Global timeout for all tests
};

export default config;