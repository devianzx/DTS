<script setup>
import { Head } from "@inertiajs/vue3";
import { computed, ref, onMounted } from "vue";
import { useUserStore } from "@/stores/users";
import {
  mdiAccountMultiple,
  mdiCartOutline,
  mdiChartTimelineVariant,
  mdiMonitorCellphone,
  mdiReload,
  mdiGithub,
  mdiChartPie,
} from "@mdi/js";
import * as chartConfig from "@/components/Charts/chart.config.js";
import LineChart from "@/components/Charts/LineChart.vue";
import SectionMain from "@/components/SectionMain.vue";
import CardBoxWidget from "@/components/CardBoxWidget.vue";
import CardBox from "@/components/CardBox.vue";
import UsersList from "@/components/Users/UsersList.vue";
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

const userStore = useUserStore();

const clientBarItems = computed(() => userStore.users.slice(0, 2));

const transactionBarItems = computed(() => userStore.history);
</script>

<template>
  <LayoutAuthenticated>
    <Head title="Dashboard" />
    <SectionMain>
      <SectionTitleLineWithButton :icon="mdiAccountMultiple" title="Users" />

      <!--NotificationBar color="info" :icon="mdiMonitorCellphone">
        Notifications here.
      </NotificationBar-->

      <CardBox has-table>
        <UsersList />
      </CardBox>
    </SectionMain>
  </LayoutAuthenticated>
</template>
