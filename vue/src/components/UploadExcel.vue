<template>
  <Modal :header="'Cargar Restricciones'" :modalType="'deleteRow'" :paragraphs="paragraphs">
      <span class="text-center leading-6 mb-2 w-full"> Suba un archivo excel con el formato correcto  o descargue el formato desde Aqui.</span>
      <input
        type="hidden"
        class="h-[52px] w-full px-4 rounded border border-[#8A9CC9] font-normal text-base text-activeText mb-4"
        placeholder="Número de filas"
        v-model="exercise"
      />
      <!-- <button
        class="h-14 sm:w-full rounded px-8 text-base leading-4 mt-10 bg-orange text-white"
        @click="$emit('delRow', { exercise: exercise })"
      >
        Eliminar
      </button> -->
  </Modal>
</template>

<script>
import Modal from "./Modal.vue";

export default {
  name: "uploadexcel-row-component",
  components: {
    Modal,
  },
  data: function () {
    return {
      paragraphs: [],
      exercise: '',
    };
  },
};
</script>
