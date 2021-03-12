import * as admin from 'firebase-admin'
import * as functions from 'firebase-functions'

admin.initializeApp()

const _firestore = admin.firestore()

const _fcm = admin.messaging()

const getUserToken = async (cityId?: string): Promise<string> => {
    const user = await _firestore.collection('cities').doc(cityId!).get()
    return user.get('token')
}

export const updateUnityClientState = functions.https.onCall(async (data, context) => {
    const isActive: boolean = data.isUnityClientActive

    const token = await getUserToken(context.auth?.uid) // add checks if auth is undefined

    const payload: any = {}

    payload['isActive'] = isActive

    const message = {
        data: payload,
        token: token
    }

    _fcm.send(message);

})

const updateAggrCity = (cityId: string, city: any) => {
    const doc = _firestore.collection('cities_agr').doc(cityId)
    doc.update(city)
}

export const onCityUpdate = functions.firestore
    .document('/cities/{cityId}')
    .onUpdate(async (snapshot, context) => {
        const before = snapshot.before.data()

        const after = snapshot.after.data()

        const aggrCity = {
            building_count_avg: (before.building_count + after.building_count) / 2,
            factory_count_avg: (before.factory_count + after.factory_count) / 2,
            house_count_avg: (before.house_count + after.house_count) / 2,
            money_avg: (before.money + after.money) / 2,
            pollution_avg: (before.pollution + after.pollution) / 2,
            population_avg: (before.population + after.population) / 2,
            power_avg: (before.power + after.power) / 2,
        }

        updateAggrCity(context.params.cityId, aggrCity);

    })