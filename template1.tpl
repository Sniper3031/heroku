%include('header.tpl')
<form action="/conciertos" method="post">
            <label>Grupo(Todas las coincidencias):</label>
            <input type="text" name="group" required/>
            <br>
            <input type="submit" value="Buscar" required/>
</form>
%end
%include('foot.tpl')
