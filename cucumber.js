module.exports = {
    default: {
        requireModule: ['ts-node/register'],
        require: ['tests/assistx/steps/*.ts'],
        paths: ['tests/assistx/features/*.feature'],
        timeout: 60000,  // Increased to 60 seconds
        retry: 0,        // Set retry to 0 to prevent retries
        failFast: false,  // Stop on first failure
        parallel: 1      // Run tests sequentially
    }
};