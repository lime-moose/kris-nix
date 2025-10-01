{
  programs.firefox.policies = {
    AutofillAddressEnabled = false;
    AutofillCreditCardEnabled = false;
    DisableFirefoxAccounts = true;
    DisableBuiltinPDFViewer = true;
    DisableFirefoxScreenshots = true;
    DisableFormHistory = true;
    DisableMasterPasswordCreation = true;
    DisablePocket = true;
    DisplayBookmarksToolbar = "never";
    DefaultDownloadDirectory = "\${home}/Workstation/downloads";
    OfferToSaveLogins = false;
    OfferToSaveLoginsDefault = false;
    PasswordManagerEnabled = false;
    PrimaryPassword = false;
    SanitizeOnShutdown = true;
    SearchSuggestEnabled = true;
    SkipTermsOfUse = true;

    SearchEngines = {
      Default = "DuckDuckgo";
      Remove = ["Google" "Bing" "Wikipedia"];
    };

    PDFjs = {
      Enabled = false;
      EnablePermissions = false;
    };

    EnableTrackingProtection = {
      Value = true;
      Cryptomining = true;
      Fingerprinting = true;
      EmailTracking = true;
      SuspectedFingerprinting = true;
      Category = "strict";
    };

    FirefoxHome = {
      Search = true;
      TopSites = true;
      SponsoredTopSites = false;
      Highlights = false;
      Stories = false;
      SponsoredStories = false;
    };

    FirefoxSuggest = {
      WebSuggestions = true;
      SponsoredSuggestions = false;
      ImproveSuggest = false;
    };

    Preferences = {
      # AI
      "browser.ml.chat.menu" = false;
      "browser.ml.chat.enabled" = false;

      # General Settings
      "browser.warnOnQuit" = false;
      "browser.warnOnQuitShortcut" = false;
      "browser.urlbar.suggest.recentsearches" = false;
      "browser.urlbar.suggest.topsites" = false;
      "browser.urlbar.suggest.history" = false;
      "browser.urlbar.suggest.bookmark" = false;
      "browser.urlbar.suggest.openpage" = false;
      "browser.urlbar.suggest.engines" = false;
      "browser.urlbar.suggest.quickactions" = false;

      # Privacy
      "privacy.globalprivacycontrol.enabled" = true;
      "browser.safebrowsing.downloads.enabled" = false;
      "browser.safebrowsing.malware.enabled" = false;
      "browser.safebrowsing.phishing.enabled" = false;
      "browser.safebrowsing.only_top_level" = false;
      "dom.private-attribution.submission.enabled" = false;
      "privacy.resistFingerprinting" = true;
      "privacy.firstparty.isolate" = true;
      "network.http.referer.XOriginPolicy" = 2;
    };

    ExtensionSettings = {
      "uBlock0@raymondhill.net" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
	installation_mode = "force_installed";
      };
    };
  };
}
