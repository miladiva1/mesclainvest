import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import axios from "axios";

export const validacao = functions.https.onCall(async (request:any) => {
  const { username, password } = request.data;

  try {
    // API do firebase auth que verifica email + senha
    // detalhe, o firebase nao permite variaveis que comecem com FIREBASE_
    const apiKey = process.env.API_KEY;
    // o axios e uma biblioteca do firebase auth 
    const response = await axios.post(
      `https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=${apiKey}`,
      {
        email: username,
        password: password,
      }
    );

    const uid = response.data.localId;
    const userDoc = await admin.firestore().collection("users").doc(uid).get();

    if (!userDoc.exists) {
      return { success: false, message: "Perfil não encontrado no banco." };
    }

    return {
      success: true,
      message: "Login realizado!",
      data: userDoc.data(),
    };

  } catch (error: any) {
    return {
      success: false,
      message: "E-mail ou senha incorretos.",
    };
  }
});
