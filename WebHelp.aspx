<!DOCTYPE html>
<!-- saved from url=(0080)https://siemens.sharepoint.com/teams/test179/Freigegebene%20Dokumente/index.aspx -->
<html lang="de"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./WebHelp_files/css2" rel="stylesheet">
    <style>
      * {
        font-family: "Roboto", sans-serif;
        font-size: 10pt;
        background-color: #fefefe;
      }

      .container {
        width: 70em;
        border: 2px #555555 solid;
        border-radius: 15px;
        padding: 0.8em;
        display: flex;
        flex-flow: column;
      }

      .question {
        height: 10%;
        margin: 0.2em 0em;
        display: flex;
        flex-flow: row;
        justify-content: center;
        align-items: flex-start;
      }

      input:focus {
        -webkit-box-shadow: 0px 5px 20px -10px rgba(0, 0, 0, 0.57);
        -moz-box-shadow: 0px 5px 20px -10px rgba(0, 0, 0, 0.57);
        box-shadow: 5px 20px -10px rgba(0, 0, 0, 0.57);
      }

      .question * {
        margin: 0.2em;
      }

      .question .long {
        width: 40%;
      }

      .question .short {
        width: 18%;
      }

      .question input {
        flex-grow: 1;
        height: 1.5rem;
        border-radius: 5px;
        border: 2px #aeaeae solid;
        padding: 0em;
      }

      .radio-buttons {
        display: flex;
        flex-direction: row;
        align-items: flex-start;
        margin: 0em;
        height: min-content;
        flex-grow: 0;
      }

      .radio-buttons * {
        margin: 0em 0.3em;
        align-content: center;
      }

      .radio-buttons input[type="radio"] {
        margin: 0em;
        border: 0px;
        width: 2rem;
        height: 1.2rem;
      }

      .radio-buttons label {
        font-size: 8pt;
      }

      .question div {
        flex-grow: 1;
      }

      .question div input {
        box-sizing: border-box;
        width: 100%;
        height: 1.7rem;
        margin: 0.5em 0em;
        padding: 0em;
      }

      .button {
        width: 6em;
      }

      .button_text {
        width: 6em;
        margin: 0.5em;
        color: #fff;
        text-transform: uppercase;
        text-decoration: none;
        text-align: center;
        background: #009999;
        padding: 10px;
        border-radius: 5px;
        display: inline-block;
        border: none;
        transition: all 0.4s ease 0s;
        cursor: pointer;
      }

      .button_text:hover {
        width: 6em;
        background: #555555;
        letter-spacing: 1px;
        -webkit-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
        -moz-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
        box-shadow: 5px 40px -10px rgba(0, 0, 0, 0.57);
        transition: all 0.4s ease 0s;
      }
    </style>
    <title>WebHelp</title>
  </head>
  <body>
    <form class="container">
      <div class="question">
        <p class="long">Was genau funktioniert nicht?</p>
        <p class="short" id="problem">Das Problem?</p>
        <input type="text" name="problem">
      </div>

      <div class="question">
        <p class="long">An wen kann der Techniker sich melden?</p>
        <p class="short" id="meldekontakt">An wen melden?</p>
        <input type="text" name="meldekontakt">
      </div>

      <div class="question">
        <p class="long">
          Wie dringend ist die Stoerung? Wann koennte der Techniker kommen?
        </p>
        <p class="short" id="dringlichkeit">Dringlichkeit?</p>

        <div>
          <div class="radio-buttons">
            <input type="radio" name="dringlichkeit" value="normal" id="initial" checked="">
            <label for="normal">Normal</label>
            <input type="radio" name="dringlichkeit" value="wichtig">
            <label for="wichtig">Wichtig</label>
            <input type="radio" name="dringlichkeit" value="dringend">
            <label for="dringend">Dringend</label>
          </div>

          <input type="text" name="dringlichkeit">
        </div>
      </div>

      <div class="question">
        <p class="long">
          Hat der Techniker freien Zugang zur Anlage oder zu dem gestoerten
          Bereich?
        </p>
        <p class="short" id="zugang">Freien Zugang zum Bereich?</p>
        <input type="text" name="zugang">
      </div>

      <div class="question">
        <p class="long">
          Wenn Sie wissen, wo der Fehler ist - Sagen Sie bitte wo genau ist der
          Fehler - welcher Stock/unter dem Dach? (Decke 3-4 Meter?)
        </p>
        <p class="short" id="wo">Wo ist der Fehler?</p>
        <input type="text" name="wo">
      </div>

      <div class="question">
        <p class="long">
          Kann der Techniker dort allein arbeiten - oder soll ihn jemand
          begleiten? (extern intern)
        </p>
        <p class="short" id="begleitung">Begleitung noetig?</p>
        <input type="text" name="begleitung">
      </div>

      <div class="question">
        <p class="long">
          Braucht der Techniker Steighilfe? (z.B. Schachtbesteigung,
          Gelenkleiter)
        </p>
        <p class="short" id="steighilfe">Steighilfe?</p>
        <input type="text" name="steighilfe">
      </div>

      <div class="question">
        <p class="long">
          Brauchen wir besondere Schutzausruestung? (z.B. Gehoerschutz, Helm,
          Sicherheitsschuhe fuer Techniker)
        </p>
        <p class="short" id="EHS">EHS Thema?</p>
        <input type="text" name="EHS">
      </div>

      <div class="buttons">
        <p id="copy" class="button_text" onclick="copyToClipBoard()" onmouseleave="resetButton()">
          Kopieren
        </p>
        <p id="clear" class="button_text" onclick="clearAll()">Loeschen</p>
      </div>
    </form>
    <script>
      function clearAll() {
        let inputs = document.querySelectorAll("input");
        inputs.forEach((element) => {
          if (element.type == "text") {
            element.value = "";
          } else {
            element.checked = false;
          }
        });
        document.getElementById("initial").checked = true; //set checked to Normal
      }

      function copyToClipBoard() {
        var ret = "";
        let inputs = document.querySelectorAll("input");

        inputs.forEach((element) => {
          var value = element.value;
          if (value == "") {
            value = "/";
          }

          if (element.type == "text") {
            var name = element.name;
            var label = document.getElementById(name).innerHTML;
            label = label.replace("?", ":");
            if (name == "dringlichkeit") {
              label = "  -";
            }
            ret += label + "  " + value + "\n";
          } else {
            if (element.checked == true) {
              var label = "Dringlichkeit:";
              ret += label + "  " + value;
            }
          }
        });

        const el = document.createElement("textarea");
        el.value = ret;
        document.body.appendChild(el);
        el.select();
        document.execCommand("copy");
        document.body.removeChild(el);

        var button = document.getElementById("copy");
        button.innerHTML = "Kopiert";
      }

      function resetButton() {
        var button = document.getElementById("copy");
        button.innerHTML = "Kopieren";
      }
    </script>
  

</body></html>