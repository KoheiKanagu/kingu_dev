export type App = {
  slug: string;
  name: string;
  tagline?: string;
  icon: string;
  ogImage: string;
  appStoreId: string;
  appStoreUrl: string;
  googlePlayUrl?: string;
  appsForAppleVisionUrl?: string;
  productHunt?: { url: string; postId: string; alt: string };
  sourceUrl?: string;
};

export const appTitle = (app: App) =>
  app.tagline ? `${app.name} - ${app.tagline}` : app.name;

export const appPath = (app: App) => `/apps/${encodeURI(app.slug)}/`;

export const apps: App[] = [
  {
    slug: "BLOOMS",
    name: "BLOOMS",
    tagline: "見つめてみよう。妊婦のあなたの日々の体調",
    icon: "/images/apps/BLOOMS.webp",
    ogImage: "/images/apps/BLOOMS.webp",
    appStoreId: "6740260241",
    appStoreUrl:
      "https://apps.apple.com/jp/app/blooms/id6740260241?itsct=apps_box_link&itscg=30200",
  },
  {
    slug: "PhotoOdyssey",
    name: "PhotoOdyssey",
    tagline: "Compare photos",
    icon: "/images/apps/PhotoOdyssey.webp",
    ogImage: "/images/apps/PhotoOdyssey.webp",
    appStoreId: "6736382597",
    appStoreUrl:
      "https://apps.apple.com/app/photoodyssey-compare-photos/id6736382597?itsct=apps_box_link&itscg=30200",
    appsForAppleVisionUrl:
      "https://appsforapplevision.com/apps-directory/photoodyssey-compare-photos",
    productHunt: {
      url: "https://www.producthunt.com/posts/photoodyssey-compare-photos?embed=true&utm_source=badge-featured&utm_medium=badge&utm_souce=badge-photoodyssey-compare-photos",
      postId: "532662",
      alt: "PhotoOdyssey - Compare photos - An odyssey for the best shot | Product Hunt",
    },
  },
  {
    slug: "ExternalVision",
    name: "ExternalVision",
    icon: "/images/apps/ExternalVision.webp",
    ogImage: "/images/apps/ExternalVision.webp",
    appStoreId: "6670433678",
    appStoreUrl:
      "https://apps.apple.com/app/externalvision/id6670433678?itsct=apps_box_link&itscg=30200",
    appsForAppleVisionUrl:
      "https://appsforapplevision.com/apps-directory/externalvision",
    productHunt: {
      url: "https://www.producthunt.com/posts/externalvision?embed=true&utm_source=badge-featured&utm_medium=badge&utm_souce=badge-externalvision",
      postId: "493450",
      alt: "ExternalVision - Copy text from the real world with Apple Vision Pro | Product Hunt",
    },
  },
  {
    slug: "AcrylicStand",
    name: "アクスタ / AcrylicStand",
    icon: "/images/apps/AcrylicStand.webp",
    ogImage: "/images/apps/AcrylicStand.webp",
    appStoreId: "6535676394",
    appStoreUrl:
      "https://apps.apple.com/app/acrylicstand/id6535676394?itsct=apps_box_link&itscg=30200",
    appsForAppleVisionUrl:
      "https://appsforapplevision.com/apps-directory/acrylicstand",
    productHunt: {
      url: "https://www.producthunt.com/posts/acrylicstand?embed=true&utm_source=badge-featured&utm_medium=badge&utm_souce=badge-acrylicstand",
      postId: "493413",
      alt: "AcrylicStand - New way to show photos | Product Hunt",
    },
  },
  {
    slug: "100-Hour Rule",
    name: "100 時間の法則 / 100-Hour Rule",
    icon: "/images/apps/100-Hour%20Rule.webp",
    ogImage: "/images/apps/100-Hour%20Rule.webp",
    appStoreId: "6517349655",
    appStoreUrl:
      "https://apps.apple.com/app/100-hour-rule/id6517349655?itsct=apps_box_link&itscg=30200",
  },
  {
    slug: "obento",
    name: "#お弁当記録 / #obento",
    icon: "/images/apps/obento.webp",
    ogImage: "/images/apps/obento-ogp.webp",
    appStoreId: "6499041461",
    appStoreUrl:
      "https://apps.apple.com/app/obento/id6499041461?itsct=apps_box_link&itscg=30200",
    googlePlayUrl: "https://play.google.com/store/apps/details?id=dev.kingu.obento",
    sourceUrl: "https://github.com/KoheiKanagu/garage/tree/main/packages/obento",
  },
  {
    slug: "locamusic",
    name: "場所で音楽 / Locamusic",
    icon: "/images/apps/locamusic.webp",
    ogImage: "/images/apps/locamusic-ogp.webp",
    appStoreId: "6471416156",
    appStoreUrl:
      "https://apps.apple.com/app/locamusic/id6471416156?itsct=apps_box_link&itscg=30200",
    sourceUrl:
      "https://github.com/KoheiKanagu/garage/tree/main/packages/listen_to_music_by_location",
  },
];
