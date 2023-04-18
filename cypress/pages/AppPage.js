class LoginPage {

    static breedInputLocator = "input[name*='breed']"
    static nickInputLocator = 'input[name*="nick"]'
    static priceInputLocator = 'input[name*="price"]'
    static urlInputLocator = 'input[name*="url"]'

    static visit() {
        cy.visit("http://localhost:3000")
    }

    static typeInBreed(breed) {
        cy.get(this.breedInputLocator).clear({force: true}).type(breed)
    }

    static typeInNick(nick) {
        cy.get(this.nickInputLocator).clear({force: true}).type(nick)

    }
    static typeInPrice(price) {
        cy.get(this.priceInputLocator).clear({force: true}).type(price)
    }

    static typeInImageUrl(imageUrl) {
        cy.get(this.urlInputLocator).clear({force: true}).type(imageUrl)
    }

    static clickAdd() {
        cy.get('button').contains('Add').click()
    }



    static assertThatPageIsVisible() {
        cy.get('#root').should('be.visible')
    }

    static assertThatTableHasRowsCount(number) {
        cy.get('tbody').find('tr').should('have.length', number)
    }

    static assertThatDogIsVisible(id, breed, nick, price) {
        cy.get('td').contains(breed).siblings('td').contains(nick).siblings('td').contains(price).closest('tr').should('have.attr', 'id', id)
    }

    static clickEdit(id) {
        cy.get('#' + id).contains('Edit').click();
    }

    static clickCancel() {
        cy.get('button').contains('Cancel').click();
    }

    static clickUpdate() {
        cy.get('button').contains('Update').click()
    }

    static deleteTheDog(id) {
        cy.get('#' + id).contains('Delete').click();
    }

    static assertThatDogDoesNotExist(id) {
        cy.get('#' + id).should('not.exist')
    }

    static assertThatDogsTableIsEmpty() {
        cy.get('table').should('have.text', 'No data')
    }

    static clearBreed() {
        cy.get(this.breedInputLocator).clear({force: true})
    }

    static clearNick() {
        cy.get(this.nickInputLocator).clear({force: true})
    }

    static clearPrice() {
        cy.get(this.priceInputLocator).clear({force: true})
    }
    
    static clearImageUrl() {
        cy.get(this.urlInputLocator).clear({force: true})
    }
}

export default LoginPage
