import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
import AppPage from '../../../pages/AppPage.js'
import App from '../../../../src/App.js'

let dogId

And('I open application', () => {
    AppPage.visit()
})

And('I should see main page', () => {
    AppPage.assertThatPageIsVisible()
})

And('I should see dogs table with {int} rows', (number) => {
    AppPage.assertThatTableHasRowsCount(number)
})

And('I add the dog of breed {string}, nick {string}, price {int} and with image URL {string}', (breed, nick, price, imageUrl) => {
    AppPage.typeInBreed(breed)
    AppPage.typeInNick(nick)
    AppPage.typeInPrice(price)
    AppPage.typeInImageUrl(imageUrl)
    AppPage.clickAdd()
})

And('I should see dog with id: {int}, breed {string}, nick {string}, price {int} in the table', (id, breed, nick, price) => {
    AppPage.assertThatDogIsVisible(id, breed, nick, price)
})

And('I edit dog with id: {int} and set price to: {int}', (id, price) => {
    AppPage.clickEdit(id)
    AppPage.typeInPrice(price)
    AppPage.clickUpdate()
})

And('I edit dog with id: {int} and set breed to: {string}', (id, breed) => {
    AppPage.clickEdit(id)
    AppPage.typeInBreed(breed)
    AppPage.clickUpdate()
})

And('I edit dog with id: {int} and set nick to: {string}', (id, nick) => {
    AppPage.clickEdit(id)
    AppPage.typeInNick(nick)
    AppPage.clickUpdate()
})

And('I edit dog with id: {int} and set Image URL to: {string}', (id, imageUrl) => {
    AppPage.clickEdit(id)
    AppPage.typeInImageUrl(imageUrl)
    AppPage.clickUpdate()
})

And('I edit dog with id: {int} and set breed to: {string}, nick to: {string}, price to: {int}, Image URL to: {string}', (id, breed, nick, price, imageUrl) => {
    AppPage.clickEdit(id)
    AppPage.typeInBreed(breed)
    AppPage.typeInNick(nick)
    AppPage.typeInPrice(price)
    AppPage.typeInImageUrl(imageUrl)
    AppPage.clickUpdate()
})

And('I edit dog with id: {int} and clear all the fields', (id) => {
    AppPage.clickEdit(id)
    AppPage.clearBreed()
    AppPage.clearNick()
    AppPage.clearPrice()
    AppPage.clearImageUrl()
    AppPage.clickUpdate()
})

And('I edit dog with id: {int} and click Cancel', (id) => {
    AppPage.clickEdit(id)
    AppPage.typeInBreed("to be canceled")
    AppPage.clickCancel()
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





