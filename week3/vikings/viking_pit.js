function Viking() {
    vikingNames = ["Leif Ericson", "Ivar the Boneless", "Angry Olaf", "Harold", "Freya", "Dag", "Ingmar"];
    this.a_name = vikingNames[Math.floor((Math.random() * vikingNames.length))];
    this.health = ((Math.random() * 10) + 10);
    this.strength = (Math.random() * 3);
}

Viking.prototype.strike = function(viking){
    viking.health -= (Math.random() * this.strength);
};

function fight_pit(vikingMaker) {
    var viking1 = new vikingMaker();
    var viking2 = new vikingMaker();

    var max_health1 = viking1.health;
    var max_health2 = viking2.health;

    console.log("The fight is on between " + viking1.a_name + " and " + viking2.a_name + "!");
    var round = 1;
    while (round < 10 && viking1.health >= 0.1 * max_health1 && viking2.health >= 0.1 * max_health2) {
        viking1.strike(viking2);
        viking2.strike(viking1);
        round++;
    }
    console.log ("The fight is over! It went on for " + round + " rounds.");
    console.log(viking1.a_name + " has a remaining health of " + viking2.health);
    console.log(viking2.a_name + " has a remaining health of " + viking1.health);
}

fight_pit(Viking);