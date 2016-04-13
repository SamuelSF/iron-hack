var exampleArray = [2, -5, 10, 5, 4, -10, 0];

var results = process(exampleArray);
console.log(results);

function process(data) {
    var positions = [];
    for (var i = 0; i < data.length - 1; i++) {
        for (var k = i + 1; k < data.length; k++) {
            if (data[i] + data[k] === 0) {positions.push(i + "," + k)}
        }
    }
    return positions;
}