import("stdfaust.lib");
// gli operatori matematici + - / * 
// il carattere due punti : indica una connessione seriale
// il carattere virgola , indica una connessione parallela
//process =  _ // canale uno
//           + // somma
//             _; // canale due
process = _+_ , _-_ , _*_ , _/_ ;
