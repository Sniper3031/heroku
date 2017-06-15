%include('header.tpl')
  <div class="wrapper">

        <div class="container">

          <div class="row">

            <div class="banner-info text-center wow fadeIn delay-05s">

              <h1 class="bnr-title">La buena música, a tu alcanze</span></h1>

              <h2 class="bnr-sub-title">¡Busca tus grupos favoritos!</h2>
                % for i,t in zip(titles2, text):
              <p class="bnr-para"> {{i}},<br> a las {{t}},<br> en {{c}},{{p}}"</a></p>
		<p>{{i}}<br>{{t}}</p>
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

