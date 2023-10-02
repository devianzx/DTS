<script setup>
import axios from "axios";
import { computed, ref } from "vue";
import { useUserStore } from "@/stores/users";
import { mdiEye, mdiTrashCan } from "@mdi/js";
import Modal from '@/Components/Modal.vue';
import CardBoxModal from "@/components/CardBoxModal.vue";
import TableCheckboxCell from "@/components/TableCheckboxCell.vue";
import BaseLevel from "@/components/BaseLevel.vue";
import BaseButtons from "@/components/BaseButtons.vue";
import BaseButton from "@/components/BaseButton.vue";
import DangerButton from '@/Components/DangerButton.vue';
import SecondaryButton from '@/Components/SecondaryButton.vue';
import UserAvatar from "@/components/UserAvatar.vue";
import { onBeforeMount } from 'vue'

defineProps({
  checkable: Boolean,
});

const userStore = useUserStore();

onBeforeMount(() => {
    userStore.fetchUsers()
})

const items = computed(() => userStore.users);

const isModalActive = ref(false);

const isModalDangerActive = ref(false);

const perPage = ref(10);

const currentPage = ref(0);

const checkedRows = ref([]);

const itemsPaginated = computed(() =>
  items.value.slice(
    perPage.value * currentPage.value,
    perPage.value * (currentPage.value + 1)
  )
);

const numPages = computed(() => Math.ceil(items.value.length / perPage.value));

const currentPageHuman = computed(() => currentPage.value + 1);

const pagesList = computed(() => {
  const pagesList = [];

  for (let i = 0; i < numPages.value; i++) {
    pagesList.push(i);
  }

  return pagesList;
});

const remove = (arr, cb) => {
  const newArr = [];

  arr.forEach((item) => {
    if (!cb(item)) {
      newArr.push(item);
    }
  });

  return newArr;
};

const checked = (isChecked, user) => {
  if (isChecked) {
    checkedRows.value.push(user);
  } else {
    checkedRows.value = remove(
      checkedRows.value,
      (row) => row.id === user.id
    );
  }
};



const confirmingUserDeletion = ref(false);

const confirmUserDeletion = (userID) => {
    const userTodelete = userID;
    confirmingUserDeletion.value = true;
};

const deleteUser = (userID) => {
    axios.post(`users/delete/2`, {
        _method: 'DELETE'
    })
.then( response => {
   //handle success
   closeModal()
   location.reload()
})
.catch( error => {
   //handle failure
})
    
};

const closeModal = () => {
    confirmingUserDeletion.value = false;
};

</script>

<template>

  <CardBoxModal v-model="isModalActive" title="Sample modal">
    <p>Lorem ipsum dolor sit amet <b>adipiscing elit</b></p>
    <p>This is sample modal</p>
  </CardBoxModal>

  

  <Modal :show="confirmingUserDeletion" @close="closeModal">
    <div class="p-6">
        <h2 class="text-lg font-medium text-gray-900">
            Are you sure you want to delete this user?
        </h2>

        <div class="mt-6 flex justify-end">
            <SecondaryButton @click="closeModal"> Cancel </SecondaryButton>

            <DangerButton
                        class="ml-3"
                        
                        @click="deleteUser(userID)"
                    >
                Delete User
            </DangerButton>
        </div>
    </div>
</Modal>

  <div v-if="checkedRows.length" class="p-3 bg-gray-100/50 dark:bg-slate-800">
    <span
      v-for="checkedRow in checkedRows"
      :key="checkedRow.id"
      class="inline-block px-2 py-1 rounded-sm mr-2 text-sm bg-gray-100 dark:bg-slate-700"
    >
      {{ checkedRow.name }}
    </span>
  </div>

  <table>
    <thead>
      <tr>
        <th v-if="checkable" />
        <th />
        <th>Name</th>
        <th>Role</th>
        <th>Station</th>
        <th>Department</th>
        <th>Email Address</th>
        <th />
      </tr>
    </thead>
    <tbody>
      <tr v-for="user in itemsPaginated" :key="user.id">
        <TableCheckboxCell
          v-if="checkable"
          @checked="checked($event, user)"
        />
        <td class="border-b-0 lg:w-6 before:hidden">
          <UserAvatar
            :username="user.name"
            class="w-24 h-24 mx-auto lg:w-6 lg:h-6"
          />
        </td>
        <td data-label="Name">
          {{ user.name }}
        </td>
        <td data-label="Company">
          {{ user.role }}
        </td>
        <td data-label="City">
          {{ user.station }}
        </td>
        <td data-label="Progress" class="lg:w-32">
            {{ user.department }}
        </td>
        <td data-label="Created" class="lg:w-1 whitespace-nowrap">
            {{ user.email }}
        </td>
        <td class="before:hidden lg:w-1 whitespace-nowrap">
          <BaseButtons type="justify-start lg:justify-end" no-wrap>
            <!--BaseButton
              color="info"
              :icon="mdiEye"
              small
              @click="confirmUserDeletion"
            /-->
            <BaseButton
              color="danger"
              :icon="mdiTrashCan"
              small
              @click="confirmUserDeletion( user.id )"
            />
          </BaseButtons>
        </td>
      </tr>
    </tbody>
  </table>
  <div class="p-3 lg:px-6 border-t border-gray-100 dark:border-slate-800">
    <BaseLevel>
      <BaseButtons>
        <BaseButton
          v-for="page in pagesList"
          :key="page"
          :active="page === currentPage"
          :label="page + 1"
          :color="page === currentPage ? 'lightDark' : 'whiteDark'"
          small
          @click="currentPage = page"
        />
      </BaseButtons>
      <small>Page {{ currentPageHuman }} of {{ numPages }}</small>
    </BaseLevel>
  </div>
</template>
