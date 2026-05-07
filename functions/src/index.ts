/**Vinícius
 * Explicação do código ->
 */


import { setGlobalOptions } from "firebase-functions";
export * as exchange from "./exchange";
export * from "./carteira";

setGlobalOptions({ maxInstances: 10 });

export * from "./startups";