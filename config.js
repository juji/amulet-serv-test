const config = {

  mongoUri: process.env.DB_USERNAME ? 
            `mongodb://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}?authSource=admin` : 
            'mongodb://localhost:27017/test'

}

module.exports = config;