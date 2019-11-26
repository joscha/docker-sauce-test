const assert = require('assert')

describe('webdriver.io page', () => {
    it('should have the right title', () => {
        browser.url('http://static-site')
        const title = browser.getTitle()
        assert.strictEqual(title, 'My title')
    })
})
