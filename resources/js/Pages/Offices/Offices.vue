<script setup>
import { Head } from "@inertiajs/vue3";
import { computed, ref, onMounted } from "vue";
import { useOfficesStore } from "@/stores/offices";
import {
  mdiAccountMultiple,
  mdiCartOutline,
  mdiChartTimelineVariant,
  mdiMonitorCellphone,
  mdiReload,
  mdiGithub,
  mdiChartPie,
  mdiFileDocumentMinusOutline,
  mdiFileDocumentMultipleOutline 
} from "@mdi/js";
import * as chartConfig from "@/components/Charts/chart.config.js";
import LineChart from "@/components/Charts/LineChart.vue";
import SectionMain from "@/components/SectionMain.vue";
import CardBoxWidget from "@/components/CardBoxWidget.vue";
import CardBox from "@/components/CardBox.vue";
import OfficesList from "@/components/Offices/OfficesList.vue";
import NotificationBar from "@/components/NotificationBar.vue";
import BaseButton from "@/components/BaseButton.vue";
import CardBoxTransaction from "@/components/CardBoxTransaction.vue";
import CardBoxClient from "@/components/CardBoxClient.vue";
import LayoutAuthenticated from "@/layouts/LayoutAuthenticated.vue";
import SectionTitleLineWithButton from "@/components/SectionTitleLineWithButton.vue";
import SectionBannerStarOnGitHub from "@/components/SectionBannerStarOnGitHub.vue";

const chartData = ref(null);

const fillChartData = () => {
  chartData.value = chartConfig.sampleChartData();
};

onMounted(() => {
  fillChartData();
});

const officeStore = useOfficesStore();

const clientBarItems = computed(() => officeStore.clients.slice(0, 4));

const transactionBarItems = computed(() => officeStore.history);
</script>

<template>
  <LayoutAuthenticated>
    <Head title="Dashboard" />
    <SectionMain>

      <SectionTitleLineWithButton :icon="mdiFileDocumentMultipleOutline" title="Requests" />

      <CardBox has-table>
        <OfficesList />
      </CardBox>
    </SectionMain>
  </LayoutAuthenticated>
</template>
