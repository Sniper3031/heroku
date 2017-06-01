%include('header.tpl')
  <div class="wrapper">

        <div class="container">

          <div class="row">

            <div class="banner-info text-center wow fadeIn delay-05s">

              <h1 class="bnr-title">La buena música, a tu alcanze</span></h1>

              <h2 class="bnr-sub-title">Descarga tu música favorita</h2>
	
		<p>En esta sección puedes buscar la música que desees. Puedes buscar el nombre del grupo, cantante. El nombre de la música es válido también. La descarga aparecera debajo junto al video de la misma. Formato mp3.</p>

              <p><form action="/musica/result" method="post">
            <label>Musica(Cantante o grupo):</label>
	    <br>
            <input style="background-color:black; type="text" name="group" required/>
	    <br>
	    <input class="btn btn-download" type="submit" value="Buscar" required/>
</form>
</p>

              <div class="overlay-detail">

              </div>

            </div>

          </div>

        </div>

        </div>

      </div>

    </div>
%end
%include('foot.tpl')
