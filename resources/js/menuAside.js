import {
  mdiAccountCircle,
  mdiMonitor,
  mdiGithub,
  mdiLock,
  mdiAlertCircle,
  mdiSquareEditOutline,
  mdiTable,
  mdiViewList,
  mdiTelevisionGuide,
  mdiResponsive,
  mdiPalette,
  mdiReact,
  mdiOfficeBuilding,
  mdiAccount 
} from "@mdi/js";
import { usePage } from "@inertiajs/vue3";

export default [
  /*"General",
  [*/
    {
      route: "dashboard",
      icon: mdiMonitor,
      label: "Dashboard",
      roles: ["superadmin","admin","office","user"]
      
    },
    {
      route: "requests",
      icon: mdiSquareEditOutline,
      label: "Requests",
      roles:["superadmin","admin","office","user"]
    },
    {
      route: "users",
      icon: mdiAccountCircle,
      label: "Users",
      roles:["superadmin","admin"]
    },
    {
      route: "roles",
      icon: mdiAccount ,
      label: "Roles",
      roles:["superadmin"]
    },
    {
      route: "offices",
      icon: mdiOfficeBuilding,
      label: "Offices",
      roles:["superadmin","admin"]
    },
    // {
    //   route: "another-route-name",
    //   icon: mdiMonitor,
    //   label: "Dashboard 2",
    // },
    /*{
      href: "https://example.com/",
      icon: mdiMonitor,
      label: "Example.com",
    },*/
 /* ],*/
];
/*
export default [
  {
    to: "/dashboard",
    icon: mdiMonitor,
    label: "Dashboard",
  },
  {
    to: "/tables",
    label: "Tables",
    icon: mdiTable,
  },
  {
    to: "/forms",
    label: "Forms",
    icon: mdiSquareEditOutline,
  },
  {
    to: "/ui",
    label: "UI",
    icon: mdiTelevisionGuide,
  },
  {
    to: "/responsive",
    label: "Responsive",
    icon: mdiResponsive,
  },
  {
    to: "/",
    label: "Styles",
    icon: mdiPalette,
  },
  {
    to: "/profile",
    label: "Profile",
    icon: mdiAccountCircle,
  },
  {
    to: "/login",
    label: "Login",
    icon: mdiLock,
  },
  {
    to: "/error",
    label: "Error",
    icon: mdiAlertCircle,
  },
  {
    label: "Dropdown",
    icon: mdiViewList,
    menu: [
      {
        label: "Item One",
      },
      {
        label: "Item Two",
      },
    ],
  },
  {
    href: "https://github.com/justboil/admin-one-vue-tailwind",
    label: "GitHub",
    icon: mdiGithub,
    target: "_blank",
  },
  {
    href: "https://github.com/justboil/admin-one-react-tailwind",
    label: "React version",
    icon: mdiReact,
    target: "_blank",
  },
  {
    href: "https://example.com/",
    icon: mdiMonitor,
    label: "Example.com",
  },
];
*/