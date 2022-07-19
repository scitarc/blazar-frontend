<template>
  <q-page>
    <div class="row justify-evenly">
      <div class="q-pa-lg">
        <div class="GPLAY__toolbar-input-container row no-wrap">
          <q-input dense outlined square v-model="search" placeholder="O que você está procurando?" class="bg-white col" />
          <q-btn class="GPLAY__toolbar-input-btn" color="primary" icon="search" unelevated />
        </div>

        <div class="q-gutter-xs q-pa-md">
          <q-chip outline v-model:selected="filterItems.molecule" color="primary" text-color="white" icon="science">
            Moléculas
          </q-chip>
          <q-chip outline v-model:selected="filterItems.organismsOrPlague" color="teal" text-color="white" icon="pest_control">
            Organismos ou pragas
          </q-chip>
          <q-chip outline v-model:selected="filterItems.publications" color="orange" text-color="white" icon="newspaper">
            Publicações
          </q-chip>
          <q-chip outline v-model:selected="filterItems.patents" color="red" text-color="white" icon="description">
            Patentes
          </q-chip>
        </div>
      </div>
    </div>

    <div class="row justify-center">
      <div class="col-10">
        <search-engine-container :display="displaySearchEngineTabs" />
      </div>
    </div>
  </q-page>
</template>

<script>
import { defineComponent, reactive, computed  } from 'vue';
import SearchEngineContainer from '../components/search-engine/SearchEngineContainer.vue';

export default defineComponent({
  name: 'SearchEngine',
  components: { SearchEngineContainer },
  setup() {
    const filterItems = reactive({
      molecule: false,
      organismsOrPlague: true,
      publications: false,
      patents: false
    });

    return {
      displaySearchEngineTabs: false,
      filterItems,
      selection: computed(() => {
        return Object.keys(filterItems)
          .filter(type => filterItems[ type ] === true)
          .join(', ')
      })
    }
  }
});
</script>

<style scoped>

</style>
