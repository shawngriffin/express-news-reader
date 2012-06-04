.class final Lcom/appyet/mobile/activity/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/appyet/mobile/activity/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "DARK_THEME"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->f(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->g(I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->f(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    iget-object v1, p0, Lcom/appyet/mobile/activity/cj;->a:Lcom/appyet/mobile/activity/SettingsActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/SettingsActivity;->a(Lcom/appyet/mobile/activity/SettingsActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->g(I)V

    goto :goto_0
.end method
