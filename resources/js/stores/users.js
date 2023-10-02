import { defineStore } from "pinia";
import axios from "axios";

export const useUserStore = defineStore("users", {
  state: () => ({
    /* User */
    userName: null,
    userEmail: null,
    userAvatar: null,

    /* Field focus with ctrl+k (to register only once) */
    isFieldFocusRegistered: false,

    users: [],
    history: [],
    //users: [{"id":1,"name":"Ian Balbuena","fname":"Ian","mname":"Fechalin","lname":"Balbuena","role":"admin","station":"Station 1","department":"Department 1","email":"ian@gmail.com","email_verified_at":null,"created_at":null,"updated_at":null},{"id":2,"name":"Fatima Javier","fname":"Fatima","mname":"Coronel","lname":"Javier","role":"department","station":"Station 2","department":"Department 2","email":"fatima@gmail.com","email_verified_at":null,"created_at":null,"updated_at":null},{"id":3,"name":"Crizza Sevilla","fname":"Crizza Mariette","mname":"Ganlao","lname":"Sevilla","role":"user","station":"Station 3","department":"Department 3","email":"crizza@gmail.com","email_verified_at":null,"created_at":null,"updated_at":null}],
  }),
  
  actions: {
    setUser(payload) {
      if (payload.name) {
        this.userName = payload.name;
      }
      if (payload.email) {
        this.userEmail = payload.email;
      }
      if (payload.avatar) {
        this.userAvatar = payload.avatar;
      }
    },

    async fetchUsers() {
        this.users = [];
        this.loading = true;    
     
        try {
          this.users = await fetch('users/userslist')
          .then((response) => response.json());
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
