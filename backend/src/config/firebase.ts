// Vinícius
/* Explicação do código:
 *  
 *  */

import * as admin from 'firebase-admin';
import * as path from 'path';

// O caminho sobe dois níveis: de /config para /src e de /src para /backend
const serviceAccountPath = path.resolve(__dirname, '../../mesclainvest-fe733-firebase-adminsdk-fbsvc-95f64ed10b.json');

if (!admin.apps.length) {
  try {
    admin.initializeApp({
      credential: admin.credential.cert(serviceAccountPath),
    });
    /**Remover estes emojis -> Eles foram inserido apenas pra melhorar a visibilidade */
    console.log('✅ Firebase Admin inicializado com sucesso.');
  } catch (error) {
    console.error('❌ Erro ao inicializar Firebase Admin:', error);
  }
}

export const db = admin.firestore();
export default admin;