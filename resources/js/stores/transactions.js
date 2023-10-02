import { defineStore } from "pinia";
import axios from "axios";

export const useTransactionStore = defineStore("transactions", {
  state: () => ({

    transactions: [],
    history: [],
  }),
  
  actions: {
    

    async fetchTransactions() {
        this.transactions = [];
        this.loading = true;    

        try {
          this.transactions = await fetch('requests/requestslist')
          .then((response) => response.json());
          console.log(result.response.data);
          console.log(response.json())
        } catch (error) {
          this.error = error
        } finally {
          this.loading = false
        }
      },

    fetch(sampleDataKey) {
      axios
        .get(`data-sources/${sampleDataKey}.json`)
        .then((r) => {
          if (r.data && r.data.data) {
            this[sampleDataKey] = r.data.data;
          }
        })
        .catch((error) => {
          alert(error.message);
        });
    },
  },
});
