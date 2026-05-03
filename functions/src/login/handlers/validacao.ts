import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

const app = admin.initializeApp();
const db = app.firestore();
const colUsers = db.collection("users");

export const validacao = functions.https.onCall(async (request:any) => {
  const { username, password } = request.data;

  const snapshot = await colUsers.where("email", "==", username).get();

  if (snapshot.empty) {
    return {
      success: false,
      message: "conta nao existente",
    };
  }

  // mesmo que so tenha 1 usuario o firestore coloca ele em uma lista
  // entao o usuarioDoc ta pegando esse usuario e pedindo os dados
  const usuarioDoc = snapshot.docs[0];
  const dadosUsuario = usuarioDoc.data();

  if (dadosUsuario.senha !== password) {
    return {
      success: false,
      message: "Senha incorreta. Tente novamente.",
    };
  }

  return {
    success: true,
    message: "Login realizado com sucesso!",
    // esse data nao esta sendo usado no momemnto porem caso precise
    // ou de erro estara mostrando o que esta sendo devolvido
    data: [dadosUsuario],
  };
});
