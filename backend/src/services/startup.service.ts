// Vinícius
/* Explicação do código:
 *  
 *  */

import { db } from '../config/firebase'; // Ajuste o caminho conforme seu arquivo

export class StartupService {
  async getAllStartups() {
    try {
      const startupsRef = db.collection('startups');
      const snapshot = await startupsRef.get();
      
      if (snapshot.empty) {
        return [];
      }

      const startups = snapshot.docs.map(doc => ({
        id: doc.id,
        ...doc.data()
      }));

      return startups;
    } catch (error) {
      throw new Error('Erro ao buscar startups no banco de dados.');
    }
  }
}

