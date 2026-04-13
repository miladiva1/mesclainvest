// Vinícius
/* Explicação do código:
 *  
 *  */

import { Request, Response } from 'express';
import { StartupService } from '../services/startup.service';

const startupService = new StartupService();

export class StartupController {
  async getAll(req: Request, res: Response) {
    try {
      const startups = await startupService.getAllStartups();
      return res.status(200).json(startups);
    } catch (error: any) {
      return res.status(500).json({ error: error.message });
    }
  }
}