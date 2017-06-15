
%include('header.tpl')
  <div class="wrapper">

        <div class="container">

          <div class="row">

            <div class="banner-info text-center wow fadeIn delay-05s">

              <h1 class="bnr-title">La buena música, a tu alcanze</span></h1>

              <h2 class="bnr-sub-title">¡Busca tus grupos favoritos!</h2>
		% for i,t,c,p in zip(lista, lista2, lista3, lista4):
              <p class="bnr-para"> {{i}},<br> a las {{t}},<br> en {{c}},{{p}}"</a></p>
		<a class="twitter-share-button" href="https://twitter.com/intent/tweet" data-text="Voy a {{i}} en {{c}}, {{p}} que empieza a las {{t}}"> Tweet </a>
		%end
		<h1 class="bnr-title">Listado de musicas relacionadas</h1>
		% for k,l in zip(titles, ids):
	<iframe width="560" height="315" src="https://www.youtube.com/embed/{{l}}" frameborder="0" allowfullscreen>{{k}}</iframe>
	    	</p>
	    %end
              <div class="overlay-detail">

              </div>

            </div>

          </div>

        </div>

	   </div>

      </div>

    </div>
%include('foot.tpl')
