<script setup>
import { Head } from "@inertiajs/vue3";
import { computed, ref, onMounted } from "vue";
import { useTransactionStore } from "@/stores/transactions";
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
import RequestsList from "@/components/Request/RequestsList.vue";
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

const transactionStore = useTransactionStore();

const clientBarItems = computed(() => transactionStore.clients.slice(0, 4));

const transactionBarItems = computed(() => transactionStore.history);
</script>

<template>
  <LayoutAuthenticated>
    <Head title="Dashboard" />
    <SectionMain>

      <SectionTitleLineWithButton :icon="mdiFileDocumentMultipleOutline" title="Requests" />

      <CardBox has-table>
        <RequestsList />
      </CardBox>
    </SectionMain>
  </LayoutAuthenticated>
</template>
