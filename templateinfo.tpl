%include('header.tpl')
  <div class="wrapper">

        <div class="container">

          <div class="row">

            <div class="banner-info text-center wow fadeIn delay-05s">

              <h1 class="bnr-title">La buena música, a tu alcanze</span></h1>

              <h2 class="bnr-sub-title">¡Busca información sobre tus grupos favoritos!</h2>

              <p><form action="/info/result" method="post">
            <label>Grupo<br>(Nombre inglés):</label>
            <br>
            <input style="background-color:black; type="text" name="text" required/>
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

