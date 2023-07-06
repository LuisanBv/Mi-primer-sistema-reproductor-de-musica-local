let previous = document.querySelector('#pre');
let play = document.querySelector('#play');
let next = document.querySelector('#next');
let title = document.querySelector('#title');
let recent_volume= document.querySelector('#volume');
let volume_show = document.querySelector('#volume_show');
let slider = document.querySelector('#duration_slider');
let show_duration = document.querySelector('#show_duration');
let track_image = document.querySelector('#track_image');
let auto_play = document.querySelector('#auto');
let present = document.querySelector('#present');
let total = document.querySelector('#total');
let artist = document.querySelector('#artist');
let album = document.querySelector('#album');



let timer;
let autoplay = 0;

let index_no = 0;
let Playing_song = false;

//create a audio Element
let track = document.createElement('audio');


//All songs list
let All_song = [
   {
     name: "OVER NOW",
     path: "invitado/music/song1.mp3",
     img: "invitado/img/img1.jpeg",
     singer: "CALVIN HARRIS",
     album: "OVER NOW - SINGLE"
   },
   {
     name: "DEZABAFO / DEIZA EU DIZER",
     path: "invitado/music/song2.mp3",
     img: "invitado/img/img2.jpeg",
     singer: "MARCELO D2",
     album: "FAST & FURIOUS 5"
   },
   {
     name: "EL ANSIOSO",
     path: "invitado/music/song3.mp3",
     img: "invitado/img/img3.jpeg",
     singer: "GRUPO MARRANO",
     album: "EPISODIO 1"
   },
   {
     name: "IMAGINATION",
     path: "invitado/music/song4.mp3",
     img: "invitado/img/img4.jpeg",
     singer: "FOSTER THE PEOPLE",
     album: "IMAGINATION - SINGLE"
   },
   {
     name: "GUY.EXE",
     path: "invitado/music/song5.mp3",
     img: "invitado/img/img5.jpeg",
     singer: "SUPERFRUIT",
     album: "FUTURE FRIENDS"
   },
   {
     name: "TADOW",
     path: "invitado/music/song6.mp3",
     img: "invitado/img/img6.jpeg",
     singer: "MASEGO",
     album: "LADY LADY"
   },
   {
     name: "FUE UN PLACER CONOCERTE",
     path: "invitado/music/song7.mp3",
     img: "invitado/img/img7.jpeg",
     singer: "ROCIO DURCAL",
     album: "1977"
   },
   {
     name: "...And To Those I Love, Thanks For Sticking Around",
     path: "invitado/music/song8.mp3",
     img: "invitado/img/img8.jpeg",
     singer: "$uicideboy$",
     album: "STOP STARING AT THE SHADOWS"
   },
   {
     name: "PYSCHO",
     path: "../webplayer/music/song9.mp3",
     img: "../webplayer/img/img9.jpeg",
     singer: "MUSE",
     album: "DRONES"
   }
];


// All functions


// function load the track
function load_track(index_no){
	clearInterval(timer);
	reset_slider();

	track.src = All_song[index_no].path;
	title.innerHTML = All_song[index_no].name;	
	track_image.src = All_song[index_no].img;
    artist.innerHTML = All_song[index_no].singer;
    album.innerHTML = All_song[index_no].album;
    track.load();

	timer = setInterval(range_slider ,1000);
	total.innerHTML = All_song.length;
	present.innerHTML = index_no + 1;
}

load_track(index_no);


//mute sound function
function mute_sound(){
	track.volume = 0;
	volume.value = 0;
	volume_show.innerHTML = 0;
}


// checking.. the song is playing or not
 function justplay(){
 	if(Playing_song==false){
 		playsong();

 	}else{
 		pausesong();
 	}
 }


// reset song slider
 function reset_slider(){
 	slider.value = 0;
 }

// play song
function playsong(){
  track.play();
  Playing_song = true;
  play.innerHTML = '<i class="fa fa-pause" aria-hidden="true"></i>';
}

//pause song
function pausesong(){
	track.pause();
	Playing_song = false;
	play.innerHTML = '<i class="fa fa-play" aria-hidden="true"></i>';
}


// next song
function next_song(){
	if(index_no < All_song.length - 1){
		index_no += 1;
		load_track(index_no);
		playsong();
	}else{
		index_no = 0;
		load_track(index_no);
		playsong();

	}
}


// previous song
function previous_song(){
	if(index_no > 0){
		index_no -= 1;
		load_track(index_no);
		playsong();

	}else{
		index_no = All_song.length;
		load_track(index_no);
		playsong();
	}
}


// change volume
function volume_change(){
	volume_show.innerHTML = recent_volume.value;
	track.volume = recent_volume.value / 100;
}

// change slider position 
function change_duration(){
	slider_position = track.duration * (slider.value / 100);
	track.currentTime = slider_position;
}

// autoplay function
function autoplay_switch(){
	if (autoplay==1){
       autoplay = 0;
       auto_play.style.background = "rgba(255,255,255,0.2)";
	}else{
       autoplay = 1;
       auto_play.style.background = "#2596be";
	}
}


function range_slider(){
	let position = 0;
        
        // update slider position
		if(!isNaN(track.duration)){
		   position = track.currentTime * (100 / track.duration);
		   slider.value =  position;
	      }

       
       // function will run when the song is over
       if(track.ended){
       	 play.innerHTML = '<i class="fa fa-play" aria-hidden="true"></i>';
           if(autoplay==1){
		       index_no += 1;
		       load_track(index_no);
		       playsong();
           }
	    }
     }