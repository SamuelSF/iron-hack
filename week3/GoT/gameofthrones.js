var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
    	//console.log ("One error" + err);
        throw err;
    }

    var episodes = JSON.parse(file).filter(good_enough);


    episode_sort(episodes);
    episodes.forEach(function (episode){
    	console.log("Title: " + episode.title);
    	console.log(episode.description);
    	console.log("Rating " + episode.rating + " " + star_maker(episode.rating) + "\n");
    });

    function star_maker(rating){
    	var stars = "";
    	for (i = 0; i < Math.round(parseFloat(rating)); i++){
    		stars += "*";
    	}
    	return stars;
    }

    function episode_sort(episodes){
    	for (var i = 0; i < episodes.length - 1; i++){
    		for (var j = i + 1; j < episodes.length; j++){
    			if (episodes[j].episode_number < episodes[i].episode_number) {
    				var a = episodes[i];
    				episodes[i] = episodes[j];
    				episodes[j] = a;
    			}
    		}
    	}
    }
    function good_enough(episode){
    	if (episode.rating >= 8.5) {return true;}
    	else {return false;}
    }
}

function searchFor(err, file){
	if (err) {
    	//console.log ("One error" + err);
        throw err;
    }

	var episodes = JSON.parse(file).filter(filterJon);
	console.log("Episodes with Jon:");
	episodes.forEach(function (episode){
		console.log(episode.title);
	});


	function filterJon(episode) {
		if (episode.description.indexOf("Jon") === -1) { return false; }
		else {return true; }
	}
}
//fs.readFile("GoTEpisodes.json", 'utf8', fileActions);
fs.readFile("GoTEpisodes.json", 'utf8', searchFor);