const cucumber = require('cypress-cucumber-preprocessor').default
let myUniqueId

module.exports = (on, config) => {
    on('file:preprocessor', cucumber())
    on('task', {
        setMyUniqueId: (val) => {
            return (myUniqueId = val);
        },

        getMyUniqueId: () => {
            return myUniqueId;
        }
    })
}