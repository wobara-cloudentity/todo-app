import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
import AppPage from '../../../pages/AppPage.js'
import App from '../../../../src/App.js'

And('I open application', () => {
    AppPage.visit()
})

And('I should see main page', () => {
    AppPage.assertThatPageIsVisible()
})

And('I should see dogs table with {int} rows', (number) => {
    AppPage.assertThatTableHasRowsCount(number)
})

And('I should see dog with id: {int}, breed {string}, nick {string}, price {int} in the table', (id, breed, nick, price) => {
    AppPage.assertThatDogIsVisible(id, breed, nick, price)
})

And("I click Add", () => {
    AppPage.clickAdd()
})

And("I click Update", () => {
    AppPage.clickUpdate()
})

And("I click Cancel", () => {
    AppPage.clickCancel()
})

And('I edit dog with id: {int}', (id) => {
    AppPage.clickEdit(id)
})

And("I clear all the fields", () => {
    AppPage.clearBreed()
    AppPage.clearNick()
    AppPage.clearPrice()
    AppPage.clearImageUrl()
})

And('I set breed to: {string}, nick to: {string}, price to: {int}, Image URL to: {string}', (breed, nick, price, imageUrl) => {
    AppPage.typeInBreed(breed)
    AppPage.typeInNick(nick)
    AppPage.typeInPrice(price)
    AppPage.typeInImageUrl(imageUrl)
})

And('I delete dog with id: {int}', (id) => {
    AppPage.deleteTheDog(id)
})

And('I should not see dog with id: {int}', (id) => {
    AppPage.assertThatDogDoesNotExist(id)
})

And('I should see dogs table with no data', (id) => {
    AppPage.assertThatDogDoesNotExist(id)
})





