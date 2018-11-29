const config = {

  mongoUri: process.env.DB_USERNAME ? 
            `mongodb://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}` : 
            'mongodb://localhost:27017/test'

}

console.log(config);

module.exports = config;