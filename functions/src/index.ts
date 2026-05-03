import {setGlobalOptions} from "firebase-functions";
export * as exchange from "./exchange";
export * as validacao from "./login";

setGlobalOptions({maxInstances: 10});

export * from "./startups";
