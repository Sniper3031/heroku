%include('header.tpl')
  <div class="wrapper">

        <div class="container">

          <div class="row">

            <div class="banner-info text-center wow fadeIn delay-05s">

              <h1 class="bnr-title">La buena música, a tu alcanze</span><$

              <h2 class="bnr-sub-title">¡Busca tus grupos favoritos!</h2>
                
              <p>Este grupo no tiene conciertos en esta localización. <br> Sentimos las molestias.</p>
              <div class="overlay-detail">
		
		<h1>Relacionados</h1>
			% for k,l in zip(titles, ids):
        		<iframe width="560" height="315" src="https://www.youtube.com/embed/{{l}}" frameborder="0" allowfullscreen>{{k}}</iframe></p>
            		%end


              </div>

            </div>

          </div>

        </div>

           </div>

      </div>
</div>
%end
%include('foot.tpl')
