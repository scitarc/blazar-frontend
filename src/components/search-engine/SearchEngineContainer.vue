<template>
    <div class="justify-evenly col-10">
      <q-card>
        <q-tabs
          v-model="tab"
          class="bg-primary text-white shadow-2"
        >
          <q-tab name="molecules" icon="science" label="Moléculas">
            <q-badge color="red" floating>2</q-badge>
          </q-tab>
          <q-tab name="organismsOrPlague" icon="pest_control" label="Organismos e pragas">
            <q-badge color="red" floating>15</q-badge>
          </q-tab>
          <q-tab name="publications" icon="newspaper" label="Publicações">
            <q-badge color="red" floating>67</q-badge>
          </q-tab>
          <q-tab name="patents" icon="description" label="Patentes">
            <q-badge color="red" floating>4</q-badge>
          </q-tab>
        </q-tabs>

          <q-separator />

          <q-tab-panels v-model="tab" animated class="text-black">
            <q-tab-panel name="molecules">
              <div class="text-h6">Moléculas</div>
              Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Cevadis im ampola pa arma uma pindureta.
            </q-tab-panel>
            <q-tab-panel name="organismsOrPlague">
              <div class="text-h6">Organismos ou Pragas</div>
              Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Cevadis im ampola pa arma uma pindureta.
            </q-tab-panel>
            <q-tab-panel name="publications">
              <div class="text-h6">Publicações</div>
              Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Cevadis im ampola pa arma uma pindureta.
            </q-tab-panel>
            <q-tab-panel name="patents">
              <div class="text-h6">Patentes</div>
              Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Cevadis im ampola pa arma uma pindureta.
            </q-tab-panel>
          </q-tab-panels>
      </q-card>
    </div>
</template>

<script>
import { defineComponent, ref } from 'vue';

export default defineComponent({
  name: "SearchEngineContainer",
  setup () {
    return {
      tab: ref('molecule', 'patents')
    }
  }
})
</script>

<style scoped>

</style>
