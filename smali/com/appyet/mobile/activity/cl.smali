.class final Lcom/appyet/mobile/activity/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Landroid/preference/PreferenceScreen;

.field private synthetic b:Lcom/appyet/mobile/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/SettingsActivity;Landroid/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cl;->b:Lcom/appyet/mobile/activity/SettingsActivity;

    iput-object p2, p0, Lcom/appyet/mobile/activity/cl;->a:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/String;

    const-string v0, "TOOLBAR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/cl;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cl;->a:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
