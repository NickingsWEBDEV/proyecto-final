<script lang="ts">
  import "../style.css";
</script>

<!-- Pagina Principal -->

<!-- Barra superior -->
<div class="flex flex-grow flex-col min-h-screen p-4 bg-gray-300">
  <nav>
    <!-- Nombre de la compañia -->
    <ul class="flex rounded gap-4 bg-stone-900 text-zinc-300">
      <div class=" text-5xl">Hip-Shop</div>

      <!-- Boton de cuenta y settings -->
      <div class="flex flex-grow justify-end gap-5 text-4xl">
        <li><a href="account.svelte">Cuenta</a></li>
        <li><a href=".-pagina-2.html">Settings</a></li>
      </div>
    </ul>

    <!-- disttintos articulos -->
    <div class="button-container">
      <li>
        <a href="Placas-Bases.svelte" class="button border-2 border-red-500"
          >Accesorios</a
        >
      </li>

      <li>
        <a href="Placas-Bases.svelte" class="button border-2 border-red-500"
          >Placas Base</a
        >
      </li>

      <li>
        <a href="Placas-Bases.svelte" class="button border-2 border-red-500"
          >Procesador</a
        >
      </li>

      <li>
        <a href="Placas-Bases.svelte" class="button border-2 border-red-500"
          >RAM</a
        >
      </li>

      <li>
        <a href="Placas-Bases.svelte" class="button border-2 border-red-500"
          >Disco Duro</a
        >
      </li>

      <li>
        <a href="Placas-Bases.svelte" class="button border-2 border-red-500"
          >Ventilador</a
        >
      </li>
    </div>
  </nav>
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
