<script lang="ts">
  import "style.css";
</script>

<div class="button-container">
  <h1 class=" bg-red-500">hola mundo</h1>

  <li><a href="App.svelte" class="button bg-red-500">Pagina principal</a></li>
</div>

<!-- Funciones Style -->

<style>
  .button-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    width: 730px;
    height: 630px;
    gap: 91px;
    width: calc(99.44% - 500px);
  }

  .button {
    width: 50%; /* Ajusta el ancho según tus necesidades */
    margin-bottom: 5px;
    padding: 30px;
    /* Otros estilos para los botones */
  }
</style>
