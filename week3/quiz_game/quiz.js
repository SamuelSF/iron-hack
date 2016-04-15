var read = require('read');

var setup_question = {prompt: "How many rounds would you like to play?"};

var rounds;

var question1 = new Question(
    "What is your name?\n >",
    "Lancelot",
    1
    );

var question2 = new Question(
    "What is your quest?\n >",
    "To find the grail.",
    1
    );

var question3 = new Question(
    "What is your favorite color?\n >",
    "Blue",
    1
    );

var question4 = new Question(
    "What is the average airspeed velocity of an unladen swallow?\n >",
    "African or European swallow?",
    1
    );

var question5 = new Question(
    "How much wood could a woodchuck chuck if a woodchuck could chuck wood?\n >",
    "As much wood as a woodchuck could chuck if a woodchuck could chuck wood.",
    2
    );

var bob = new User("Bob");
var rob = new User("Rob");
var betty = new User("Betty");
var charlotte = new User("Charlotte");

var users = [bob, rob, betty, charlotte];

var questions = [question1, question2, question3, question4, question5];

var current_question = question1;

var current_user;

function Question(description, answer, points){
    this.description = description;
    this.answer = answer;
    this.points = points;
}

Question.prototype.checkAnswer = function(answer) {
    return (this.answer === answer);
};

function User(name){
    this.name = name;
    this.score = 0;
}

User.prototype.addToScore = function(num) {
    this.score += num;
};

function setup(err, num){
        if (err) {throw err;}
        rounds = parseInt(num);
        if (rounds <= 0) {console.log("Game Over. Goodbye.")}
        else {
            current_user = users[rounds % users.length];
            console.log ("It is currently " + current_user.name + "'s turn.")
            read({prompt: current_question.description}, quiz);
        }
    }


function quiz(err, answer){
    if (err) {throw err}

    if (current_question.checkAnswer(answer)){
        current_user.addToScore(current_question.points);
        console.log("Good Job.");
        console.log(current_user.name + " now has " + current_user.score + " points.");
    }
    else {
        console.log("AAAHHH!!!");
    }

    rounds -= 1;

    if (rounds <= 0){
        console.log("Game Over.  Goodbye.");
    }
    else {
        current_user = users[rounds % users.length];
        current_question = questions[Math.floor(Math.random() * questions.length)];
        console.log("It is now " + current_user.name + "'s turn.");
        read({prompt: current_question.description}, quiz);
    }
}


read(setup_question, setup);