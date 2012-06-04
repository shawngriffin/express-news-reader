.class public Lcom/appyet/mobile/activity/SettingsActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private a:Landroid/preference/PreferenceScreen;

.field private b:Landroid/preference/PreferenceScreen;

.field private c:Landroid/preference/PreferenceScreen;

.field private d:Landroid/preference/PreferenceScreen;

.field private e:Landroid/preference/PreferenceScreen;

.field private f:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    const-string v0, "SETTINGS_BACKUPRESTORE"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v0, "SETTINGS_LICENSE"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v0, "SETTINGS_ABOUT"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->c:Landroid/preference/PreferenceScreen;

    const-string v0, "SETTINGS_CLEARSEARCHHISTORY"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->e:Landroid/preference/PreferenceScreen;

    const-string v0, "SETTINGS_MEDIA"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->d:Landroid/preference/PreferenceScreen;

    const-string v0, "SETTINGS_UPDATES_WIFIONLY_PODCAST"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/mobile/activity/SettingsActivity;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "SETTINGS_UPDATES_OPTIONS"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v0, "SETTINGS_DISPLAY_FEEDLIST_OPTIONS"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->E()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SETTINGS_DISPLAY_SCREEN"

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    const-string v0, "SETTINGS_UPDATES_ARTICLEDOWNLOADPROVIDER"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->o()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SETTINGS_UPDATES_OPTIONS"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v0, "SETTINGS_DISPLAY_LANGUAGE"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->C()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->C()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->C()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/c/g;

    iget-object v7, v1, Lcom/appyet/mobile/c/g;->a:Ljava/lang/String;

    aput-object v7, v4, v2

    iget-object v1, v1, Lcom/appyet/mobile/c/g;->b:Ljava/lang/String;

    aput-object v1, v5, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    const-string v0, "SETTINGS_DISPLAY_DISPLAYFAVORITE"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->s()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SETTINGS_DISPLAY_FEEDLIST_OPTIONS"

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "SETTINGS_DISPLAY_COLORTHEME"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/appyet/mobile/activity/cj;

    invoke-direct {v1, p0}, Lcom/appyet/mobile/activity/cj;-><init>(Lcom/appyet/mobile/activity/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "SETTINGS_DISPLAY_TOOLBARICONS"

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "SETTINGS_DISPLAY_QUICKACTIONBAR"

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TOOLBAR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_2
    new-instance v2, Lcom/appyet/mobile/activity/cl;

    invoke-direct {v2, p0, v0}, Lcom/appyet/mobile/activity/cl;-><init>(Lcom/appyet/mobile/activity/SettingsActivity;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->w:Lcom/google/android/apps/analytics/v;

    invoke-virtual {p0}, Lcom/appyet/mobile/activity/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->a:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/BackupRestoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/appyet/mobile/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->b:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/LicenseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->c:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/mobile/activity/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->e:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/activity/SettingsActivity;->f:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/mobile/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".suggestion.provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/SettingsActivity;->e:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/mobile/manager/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method
