// scheme-model
const db = require('../data/db-config');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

async function find() {
    try{
        return await db('schemes');
    } catch(err){
        throw err;
    }
}

// function find() {
//     return db('users');
//   }

async function findById(id) {
    try {
        const user = await db('schemes').where({ id }).first();
        return user
    } catch (err) {
        throw err;
    }
}

async function findSteps(id) {
    try{
        const steps = await 
            db('steps as s')
                .join('schemes as u', 'u.id', 's.scheme_id')
                .where({ scheme_id: id })
                .select('s.id', 'u.scheme_name', 's.instructions');

            return steps;
    } catch (err) {
        throw err
    }
}

async function add(userData) {
    try {
        const ids = await db('schemes').insert(userData);
        const newUser = await findById(ids[0]);
        return newUser;
    } catch (err) {
        throw err;
    }
}



async function update(changes, id) {
    try {
        await db('schemes').where({ id }).update(changes);
        return await findById(id);
    } catch (err) {
        throw err;
    }
}



async function remove(id) {
    try {
        return await db('schemes').del().where({ id });
    } catch (err) {
        throw err;
    }
}