// Vinícius
/* Explicação do código:
 *  
 *  */

import { Router } from 'express';
import { StartupController } from '../controllers/startup.controller';

const router = Router();
const startupController = new StartupController();

// Esta linha abaixo substitui o comentário "// GET /api/startups" 
// e faz o trabalho de verdade:
router.get('/', startupController.getAll.bind(startupController));

export default router;