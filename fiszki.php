<?php
 // bTBPnBp9PFo4g1y1tvnqZ4fB require __DIR__ .'/vendor/mustache/mustache/src/Mustache/Autoloader.php';
// Mustache_Autoloader::register();
//  $m = new Mustache_Engine; echo $m->render('Hello, {{planet}}!', array('planet' => 'World')); // "Hello, World!"
include('baza.php');//sprawdzam połączenie
if(!$connect){
    header('location: index.php');//przekierowanie do logowania
}
?>
<!DOCTYPE html>
<html lang="en">
<?php include('header.php') ?>

<body>
<h2>NAUKA</h2>

<div class="select" >

<button class="fiszki" id="przycisk">NAUKA</button>
<button class="zestawy"  id="zestawy">ZARZĄDZAJ ZESTAWAMI</button>

</div>

<div>      <?php require_once "table_select.php" ?>

    <div class="panel"><span></span><span></span></div>
    <div class="panel2"><span></span></div>
</div>
    <div class="card">  </div>

    <a class="log_out" href="table_settings/log_out.php">Wyloguj</a>
    <div class="random_button"><i class="icon-arrows-ccw"></i></div>

    <div class="menu">
        <div class="menubutton"><i class="icon-cog-alt"></i></div>
        <div class="menu-content">
           <div>
           <center><h1>Dodaj słówko do aktywnego zestawu:</h1></center>
           <div class="select">
             <?php require_once "wyswietl_tablice.php" ?>
           </div>
           <div><br><h2></h2><a href="wyswietl_tablice.php">Tablice</a>

           </div></br>

           <div>  <center>
                  <h2>Informacje o dzwięku:</h2>
                  <div id="length">Długość:</div>
                  <div id="source">Źródło:</div>
                  <div id="status" style="color:red;">Status: Ładowanie</div>
                  <hr>
                  <h2>Przyciski kontrolne</h2>
                  <button id="play">Odtwarzaj</button>
                  <button id="pause">Zatrzymaj</button>
                  <button id="restart">Odnowa</button>
                  <hr>
                  <h2>Informacje o odtwarzaniu</h2>
                  <div id="currentTime">0</div>
                </center>
                    <a href="table_settings/log_out.php">WYLOGUJ</a>
            </div>
        </div>
    </div>
</body>
<script>
    const menu_click = document.querySelector('.menubutton').addEventListener('click', (e) => {
        document.querySelector('.menu').classList.toggle('active');
    });

</script>

<script>

    let array1=[]
    let array2=[]
    let weight=[]
    $(document).ready(function() {
        $('.select button').click(function(){
            $('.select button').removeClass('active')
            console.log(this.classList.add('active'))
            array1=[];
            array2=[];
            weight=[];
            const table=this.innerHTML
            $('.panel').load('table_settings/load_table_fiszki.php',{
                table:table
            })
        })

// DODAWANIE //
                $('.add').click(function() {
                   let select_database = $("input[name=word_operation]:checked").val()
                   let value1 = $("input[name=add-v1]").val()
                   let value2 = $("input[name=add-v2]").val()
                   let value3 = $("input[name=add-v3]").val()
                  if(value1&&value2){
                      $('.result').load("table_settings/insert.php", {
                    value1:value1,
                    value2:value2,
                    value3:value3,
                    select_database:select_database
                });
                  }
                    else{
                        console.log('error');
                    }
                })

//Pokazywanie wybranego słowa//

    })


    let random_language= 0;
    let random_words= 0;
    let second_word = false;//sprawdza czy jest pokazane drugie słówko
    const panel = document.querySelector('.panel')
    const panel2 = document.querySelector('.panel2')

    const losuj =()=>{
    if(array1.length>0 && second_word == false){
        panel.classList.remove('active')
        random_language=Math.floor(Math.random()*2);
        random_words = Math.floor(Math.random()*array1.length)

                       let text = array1[random_words];

                       text = text.replace(/\s/g, "_");
                       text = text.replace("a_", "");
                       text = text.replace("an_", "");
                       text = text.replace("?", "");
                       text = text.replace("!", "");
                       console.log(text);

                        if(typeof(audioElement) != "undefined" && audioElement !== null) {

                                audioElement.pause();

                        } else {

                                audioElement = document.createElement('audio');

                        }

                        // audioElement.currentTime = 0;
                        $ ('audio').attr('src', 'https://www.diki.pl//images-common/en/mp3/'+text+'.mp3');
                        audioElement.setAttribute('src', 'https://www.diki.pl//images-common/en/mp3/'+text+'.mp3');
                        /*dodane oststnio */audioElement.play();
                        audioElement.addEventListener('ended', function() {
                            this.play();
                        }, false);

                        audioElement.addEventListener("canplay",function(){
                            $("#length").text("Duration:" + audioElement.duration + " seconds");
                            $("#source").text("Source:" + audioElement.src);
                            $("#status").text("Status: Ready to play").css("color","green");
                        });

                        audioElement.addEventListener("timeupdate",function(){
                            $("#currentTime").text("Current second:" + audioElement.currentTime);
                        });

                        $('#play').click(function(atrybute) {
                            audioElement.play();
                            $("#status").text("Status: Playing");
                        });

                        $('#pause').click(function(atrybute) {
                            audioElement.pause();
                            $("#status").text("Status: Paused");
                        });

                        $('#restart').click(function(atrybute) {
                            audioElement.currentTime = 0;
                        });

        if(random_language){
        panel.innerHTML=`<span>${array1[random_words]}</span><span>${array2[random_words]}</span>`
        }
        else{
        /*zamieniłem array*/panel.innerHTML=`<span>${array1[random_words]}</span><span>${array2[random_words]}</span>`
        }
        second_word=!second_word

        panel2.innerHTML=`<span><center>${array1[random_words]} <input id="usun_z_planu" type="submit" name="usun_z_planu" class="przycisk przycisk3" value="Nie chcę się już tego słowa!"></center></span>`

        $('#usun_z_planu').click(function() {
            let select_database = $("input[name=word_operation]:checked").val()
            let id_word = random_words+2
            if(id_word){
              alert(id_word);
              alert(select_database);
                $('#usun_z_planu').load("table_settings/usun_z_planu.php", {
                   id_word:id_word,
                   select_database:select_database
                });
            }
            else{
                console.log('error');
            }
         })
    }
        else if(array1.length>0 && second_word == true){
            panel.classList.add('active')
            second_word=!second_word
        }
    }

//Po kliknięciu w klawiature albo przycisk losuje słówko

document.addEventListener('keydown',losuj)
document.querySelector('.random_button').addEventListener('click',losuj)

$(document).ready(function(){
  $('#przycisk').click(function(){
    window.document.location.href="fiszki.php";
    return false;
  });
});

$(document).ready(function(){
  $('#zestawy').click(function(){
    window.document.location.href="tryb_wyboru.php";
    return false;
  });
});

</script>

</html>
