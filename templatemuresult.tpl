%include('header.tpl')
  <div class="wrapper">

        <div class="container">

          <div class="row">

            <div class="banner-info text-center wow fadeIn delay-05s">

              <h1 class="bnr-title">La buena música, a tu alcanze</span></h1>

              <h2 class="bnr-sub-title">¡Busca tus grupos favoritos!</h2>

              <p>
		% for k,l in zip(titles, ids):
			<iframe width="560" height="315" src="https://www.youtube.com/embed/{{l}}" frameborder="0" allowfullscreen></iframe>
			<br>
		 	<iframe style="width:115px;height:39px;border:0;overflow:hidden;" scrolling="no" src="//www.youtubeinmp3.com/widget/button/?video=https://www.youtube.com/watch?v={{l}}"></iframe>
			<br>
		   %end

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
