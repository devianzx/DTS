<script setup>
import { Head } from "@inertiajs/vue3";
import { computed, ref, onMounted } from "vue";
import { useRolesStore } from "@/stores/roles";
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
import RolesList from "@/components/Roles/RolesList.vue";
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

const roleStore = useRolesStore();

const clientBarItems = computed(() => roleStore.clients.slice(0, 4));

const transactionBarItems = computed(() => roleStore.history);
</script>

<template>
  <LayoutAuthenticated>
    <Head title="Dashboard" />
    <SectionMain>

      <SectionTitleLineWithButton :icon="mdiFileDocumentMultipleOutline" title="Requests" />

      <CardBox has-table>
        <RolesList />
      </CardBox>
    </SectionMain>
  </LayoutAuthenticated>
</template>
