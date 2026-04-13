// Vinícius
/* Explicação do código:
 *  
 *  */

import { Router } from 'express';
import authRoutes from './auth.routes';
import startupsRoutes from './startups.routes';
import tokensRoutes from './tokens.routes';
import dashboardRoutes from './dashboard.routes';

const router = Router();

router.use('/auth', authRoutes);
router.use('/startups', startupsRoutes);
router.use('/tokens', tokensRoutes);
router.use('/dashboard', dashboardRoutes);

export default router;
