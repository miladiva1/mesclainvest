/**Vinícius
 * Explicação do código ->
 */
import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

export const sellTokens = functions.https.onCall(async (request) => {
  if (!request.auth) {
    throw new functions.https.HttpsError("unauthenticated", "Log in necessário.");
  }

  const userId = request.auth.uid;
  const { startupId, quantidade } = request.data;

  if (!startupId || typeof quantidade !== "number" || !Number.isInteger(quantidade) || quantidade <= 0) {
    throw new functions.https.HttpsError("invalid-argument", "Parâmetros inválidos.");
  }

  const db = admin.firestore();

  try {
    await db.runTransaction(async (t) => {
      const carteiraRef = db.collection("users").doc(userId).collection("carteira").doc("saldo");
      const investimentoRef = db.collection("users").doc(userId).collection("investimentos").doc(startupId);
      const exchangeRef = db.collection("exchange").doc(startupId);

      const [carteiraSnap, investimentoSnap, exchangeSnap] = await Promise.all([
        t.get(carteiraRef),
        t.get(investimentoRef),
        t.get(exchangeRef)
      ]);

      if (!investimentoSnap.exists) {
        throw new functions.https.HttpsError("failed-precondition", "Saldo de tokens insuficiente para venda.");
      }

      const invData = investimentoSnap.data()!;
      const tokensAtuais = invData.tokensComprados || 0;

      if (tokensAtuais < quantidade) {
        throw new functions.https.HttpsError("failed-precondition", "Saldo de tokens insuficiente para venda.");
      }

      if (!exchangeSnap.exists) {
        throw new functions.https.HttpsError("failed-precondition", "Exchange não encontrada para esta startup.");
      }

      const exchangeData = exchangeSnap.data()!;
      const precoAtual = exchangeData.precoAtual || 0;
      const tokensDisponiveis = exchangeData.tokensDisponiveis || 0;
      const capitalArrecadado = exchangeData.capitalArrecadado || 0;

      const valorReceber = Number((precoAtual * quantidade).toFixed(2));

      const saldoData = carteiraSnap.exists ? carteiraSnap.data() : { saldo: 0 };
      const saldoAtual = saldoData?.saldo || 0;

      const novoSaldoUsuario = Number((saldoAtual + valorReceber).toFixed(2));
      const novosTokensUsuario = tokensAtuais - quantidade;
      const novosTokensPool = tokensDisponiveis + quantidade;
      const novoCapitalPool = Number((capitalArrecadado - valorReceber).toFixed(2));

      const novoPreco = novosTokensPool > 0
        ? Number((novoCapitalPool / novosTokensPool).toFixed(4))
        : precoAtual;

      t.set(carteiraRef, { saldo: novoSaldoUsuario }, { merge: true });

      const valorPagoAtual = invData.valorPago || 0;
      const novoValorPago = Math.max(0, valorPagoAtual - valorReceber);

      if (novosTokensUsuario === 0) {
        t.delete(investimentoRef);
      } else {
        t.set(investimentoRef, {
          tokensComprados: novosTokensUsuario,
          valorPago: novoValorPago
        }, { merge: true });
      }

      t.update(exchangeRef, {
        tokensDisponiveis: novosTokensPool,
        capitalArrecadado: novoCapitalPool,
        precoAtual: novoPreco
      });
    });

    return { status: "success" };
  } catch (error: any) {
    if (error instanceof functions.https.HttpsError) {
      throw error;
    }
    throw new functions.https.HttpsError("failed-precondition", error.message);
  }
});
