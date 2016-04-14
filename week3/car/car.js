var Car = function(model, noise) {

    this.model = model;
    this.noise = noise;
    this.number_of_wheels = 4;
};

Car.prototype.makeNoise = function(){
    console.log(this.noise);
};

var hondaCivic = new Car("civic", "vroom");

hondaCivic.makeNoise();