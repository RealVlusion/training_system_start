/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

// const {onRequest} = require("firebase-functions/v2/https");
// const logger = require("firebase-functions/logger");

// Create and deploy your first functions
// https://firebase.google.com/docs/functions/get-started

// exports.helloWorld = onRequest((request, response) => {
//   logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

exports.dailyNotificationForUpcomingTrainings = functions.pubsub.schedule('every 5 minutes').onRun(async (context) => {
    const today = new Date();
    const oneWeekFromToday = new Date();
    oneWeekFromToday.setDate(today.getDate() + 7);
    oneWeekFromToday.setHours(0, 0, 0, 0);

    const trainingsSnapshot = await admin.firestore().collection("training_planning")
        .where("startDate", ">=", oneWeekFromToday)
        .where("startDate", "<", new Date(oneWeekFromToday.getTime() + 24 * 60 * 60 * 1000))
        .get();

    const trainings = trainingsSnapshot.docs.map((doc) => doc.data());

    for (const trainingSnapshot of trainingsSnapshot.docs) {
        const trainingData = trainingSnapshot.data();
        const trainingId = trainingSnapshot.id;

        const trainingApplicationsSnapshot = await admin.firestore().collection("training_application")
            .where("planningId", "==", trainingId)
            .get();

        const applications = trainingApplicationsSnapshot.docs.map((doc) => doc.data());

        for (const applicationSnapshot of trainingApplicationsSnapshot.docs) {
            const applicationData = applicationSnapshot.data();
            await admin.firestore().collection("mails").add({
                to: [applicationData.userId],
                template: {
                    name: "upcoming_training",
                    data: {
                        email: applicationData.userId,
                        training: trainingData.trainingName,
                    },
                },
            });

        }
    }
});