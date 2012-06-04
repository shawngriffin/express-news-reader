.class public final Lcom/appyet/mobile/manager/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/appyet/mobile/context/ApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ewudr2sW"

    sput-object v0, Lcom/appyet/mobile/manager/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DARK_THEME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    const-string v2, "SETTINGS_DISPLAY_FONTCOLOR_SECONDARY"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public final B()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_GROUPFEEDS"

    iget-object v2, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->j()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "HAS_RATTING_REMINDER_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HAS_RATTING_REMINDER_SHOWN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final E()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "HAS_PLAYLIST_HINT_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HAS_PLAYLIST_HINT_SHOWN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final G()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "STATISTIC_READ_ARTICLE_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final H()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_HAPTICONLIMIT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final I()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SETTINGS_DISPLAY_LANGUAGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J()Lcom/appyet/mobile/context/a;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_QUICKACTIONBAR"

    const-string v2, "TOOLBAR"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "THUMBNAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/a;->b:Lcom/appyet/mobile/context/a;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SETTINGS_DISPLAY_QUICKACTIONBAR"

    const-string v2, "TOOLBAR"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/mobile/context/a;->a:Lcom/appyet/mobile/context/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appyet/mobile/context/a;->c:Lcom/appyet/mobile/context/a;

    goto :goto_0
.end method

.method public final K()Lcom/appyet/mobile/context/o;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_ARTICLELISTITEMLAYOUT"

    const-string v2, "CLASSIC_RICH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CLASSIC_RICH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/o;->a:Lcom/appyet/mobile/context/o;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SETTINGS_DISPLAY_ARTICLELISTITEMLAYOUT"

    const-string v2, "CLASSIC_RICH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLASSIC_SIMPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/mobile/context/o;->b:Lcom/appyet/mobile/context/o;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appyet/mobile/context/o;->a:Lcom/appyet/mobile/context/o;

    goto :goto_0
.end method

.method public final L()Lcom/appyet/mobile/context/m;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_FEEDLISTITEMLAYOUT"

    const-string v2, "CLASSIC_RICH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CLASSIC_RICH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/m;->a:Lcom/appyet/mobile/context/m;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SETTINGS_DISPLAY_FEEDLISTITEMLAYOUT"

    const-string v2, "CLASSIC_RICH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLASSIC_SIMPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/mobile/context/m;->b:Lcom/appyet/mobile/context/m;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appyet/mobile/context/m;->a:Lcom/appyet/mobile/context/m;

    goto :goto_0
.end method

.method public final M()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_PREVIOUS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final N()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_STAR"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final O()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_OPEN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final P()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v1}, Lcom/appyet/mobile/manager/bu;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_MOBILIZE_INSTAPAPER"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_MOBILIZE_INSTAPAPER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final Q()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_MOBILIZE_GOOGLE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final R()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_DELETE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final S()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_SHARE_LINK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final T()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_SHARE_FACEBOOK"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final U()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_SHARE_TWITTER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final V()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_NEXT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final W()Lcom/appyet/mobile/context/h;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SWIPELEFTTORIGHT"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOGGLE_READ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/h;->b:Lcom/appyet/mobile/context/h;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SETTINGS_DISPLAY_SWIPELEFTTORIGHT"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOGGLE_STAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/appyet/mobile/context/h;->c:Lcom/appyet/mobile/context/h;

    goto :goto_0

    :cond_1
    const-string v1, "SETTINGS_DISPLAY_SWIPELEFTTORIGHT"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appyet/mobile/context/h;->d:Lcom/appyet/mobile/context/h;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/appyet/mobile/context/h;->a:Lcom/appyet/mobile/context/h;

    goto :goto_0
.end method

.method public final X()Lcom/appyet/mobile/context/h;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SWIPERIGHTTOLEFT"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOGGLE_READ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/h;->b:Lcom/appyet/mobile/context/h;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SETTINGS_DISPLAY_SWIPERIGHTTOLEFT"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOGGLE_STAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/appyet/mobile/context/h;->c:Lcom/appyet/mobile/context/h;

    goto :goto_0

    :cond_1
    const-string v1, "SETTINGS_DISPLAY_SWIPERIGHTTOLEFT"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appyet/mobile/context/h;->d:Lcom/appyet/mobile/context/h;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/appyet/mobile/context/h;->a:Lcom/appyet/mobile/context/h;

    goto :goto_0
.end method

.method public final Y()Lcom/appyet/mobile/context/b;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SORTARTICLEBY"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/appyet/mobile/context/b;->d:Lcom/appyet/mobile/context/b;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/appyet/mobile/context/b;->a:Lcom/appyet/mobile/context/b;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appyet/mobile/context/b;->b:Lcom/appyet/mobile/context/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appyet/mobile/context/b;->c:Lcom/appyet/mobile/context/b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appyet/mobile/context/b;->d:Lcom/appyet/mobile/context/b;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/appyet/mobile/context/b;->e:Lcom/appyet/mobile/context/b;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/appyet/mobile/context/b;->f:Lcom/appyet/mobile/context/b;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/appyet/mobile/context/b;->g:Lcom/appyet/mobile/context/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final Z()Lcom/appyet/mobile/context/l;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SORTPLAYLISTBY"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/appyet/mobile/context/l;->a:Lcom/appyet/mobile/context/l;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/appyet/mobile/context/l;->b:Lcom/appyet/mobile/context/l;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appyet/mobile/context/l;->c:Lcom/appyet/mobile/context/l;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appyet/mobile/context/l;->e:Lcom/appyet/mobile/context/l;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appyet/mobile/context/l;->f:Lcom/appyet/mobile/context/l;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/appyet/mobile/context/l;->d:Lcom/appyet/mobile/context/l;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_ADVANCED_USERAGENT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "STATISTIC_READ_ARTICLE_COUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTING_LASTCLEARCACHE"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Lcom/appyet/mobile/manager/ax;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne p1, v1, :cond_0

    const-string v1, "SETTINGS_FEEDITEM_DISPLAY_MODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v1, "SETTINGS_FEEDITEM_DISPLAY_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_COLORTHEME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "DARK_THEME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/manager/f;->f(I)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/manager/f;->g(I)V

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/manager/f;->f(I)V

    iget-object v1, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appyet/mobile/manager/f;->g(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_VIEWIMAGEONTOUCH"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aA()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_WIFIONLY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aB()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_WIFIONLY_IMAGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aC()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_WIFIONLY_PODCAST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aD()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_WIDGET_POSITION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final aE()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_RSSDEMON_UPGRADED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aF()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_RSSDEMON_UPGRADED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aG()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_TRANSLATE_LANGUAGE"

    const-string v2, "16"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final aH()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_SLEEP_TIMER_PROGRESS"

    const-string v2, "29"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final aI()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_CLEAN_UP_UNREAD_DAYS"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final aJ()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_CLEAN_UP_READ_DAYS"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final aa()Lcom/appyet/mobile/context/i;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SORTFEEDBY"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/appyet/mobile/context/i;->d:Lcom/appyet/mobile/context/i;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/appyet/mobile/context/i;->a:Lcom/appyet/mobile/context/i;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appyet/mobile/context/i;->b:Lcom/appyet/mobile/context/i;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appyet/mobile/context/i;->c:Lcom/appyet/mobile/context/i;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appyet/mobile/context/i;->d:Lcom/appyet/mobile/context/i;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/appyet/mobile/context/i;->e:Lcom/appyet/mobile/context/i;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/appyet/mobile/context/i;->f:Lcom/appyet/mobile/context/i;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final ab()Lcom/appyet/mobile/context/c;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SORTGROUPBY"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/appyet/mobile/context/c;->d:Lcom/appyet/mobile/context/c;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/appyet/mobile/context/c;->a:Lcom/appyet/mobile/context/c;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appyet/mobile/context/c;->b:Lcom/appyet/mobile/context/c;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appyet/mobile/context/c;->c:Lcom/appyet/mobile/context/c;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appyet/mobile/context/c;->d:Lcom/appyet/mobile/context/c;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final ac()Lcom/appyet/mobile/context/f;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_VOLUMEKEYACTION"

    const-string v2, "PREVIOUS_NEXT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/f;->a:Lcom/appyet/mobile/context/f;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "UP_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/mobile/context/f;->b:Lcom/appyet/mobile/context/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appyet/mobile/context/f;->c:Lcom/appyet/mobile/context/f;

    goto :goto_0
.end method

.method public final ad()Lcom/appyet/mobile/manager/ax;
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v3}, Lcom/appyet/mobile/manager/bu;->d()Lcom/appyet/mobile/manager/ax;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    if-ne v3, v4, :cond_0

    move v0, v1

    :cond_0
    const-string v3, "SETTINGS_FEEDITEM_DISPLAY_MODE"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/appyet/mobile/manager/ax;->b:Lcom/appyet/mobile/manager/ax;

    goto :goto_0
.end method

.method public final ae()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_FULLSCREEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final af()J
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTING_LASTCLEARCACHE"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/appyet/mobile/manager/f;->a(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final ag()J
    .locals 4

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTING_LASTSYNC"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ah()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MEDIA_LASTPLAYEDFEEDITEMID"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final ai()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MEDIA_PAUSE_HEADSET_DISCONNECTED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aj()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MEDIA_PAUSE_POWER_REMOVAL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ak()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MEDIA_REACT_TO_HEADSET"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final al()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MESSAGE_AUTO_CLEANUP_KEEP_STAR"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final am()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MESSAGE_AUTO_CLEANUP_READ"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final an()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MESSAGE_AUTO_CLEANUP_UNREAD"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final ao()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MESSAGE_CLEARCACHEINTERVAL"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final ap()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MESSAGE_KEEPUNREADITEMS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aq()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MESSAGE_LIMIT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final ar()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_MESSAGE_SDCARDFORSTORAGE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final as()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_NOTIFICATIONS_FLASHLIGHT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final at()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_NOTIFICATIONS_NOTIFICATION"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final au()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_NOTIFICATIONS_RINGTONE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final av()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_NOTIFICATIONS_VIBRATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aw()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_AUTO"

    iget-object v2, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->c()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ax()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_NODATAINROAMING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ay()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_UPDATEINTERVAL"

    iget-object v2, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final az()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_UPDATE_ON_STARTUP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "APPLICATION_LAST_VERSION_CODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "APPLICATION_LAST_VERSION_CODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTING_LASTSYNC"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_LANGUAGE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_GROUPFEEDS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_ARTICLE_FONTFAMILY"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_ARTICLE_FONTSIZE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_MEDIA_LASTPLAYEDFEEDITEMID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_TOOLBARICONS_MOBILIZE_INSTAPAPER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_ARTICLE_FONTSIZE"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_PLAYLIST_REPEAT"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_AUTO_HIDE_READ"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_PLAYLIST_SHUFFLE"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_PLAYLIST_SHUFFLE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_FULLSCREEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_PLAYLIST_REPEAT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_FONTCOLOR_PRIMARY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_AUTO"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final g()Lcom/appyet/mobile/context/g;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_PLAYLIST_SHUFFLE"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/g;->b:Lcom/appyet/mobile/context/g;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/appyet/mobile/context/g;->a:Lcom/appyet/mobile/context/g;

    goto :goto_0
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_FONTCOLOR_SECONDARY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final h()Lcom/appyet/mobile/context/n;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_PLAYLIST_REPEAT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/n;->b:Lcom/appyet/mobile/context/n;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SETTINGS_PLAYLIST_REPEAT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/mobile/context/n;->c:Lcom/appyet/mobile/context/n;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appyet/mobile/context/n;->a:Lcom/appyet/mobile/context/n;

    goto :goto_0
.end method

.method public final h(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_UPDATES_UPDATEINTERVAL"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final i()Lcom/appyet/mobile/context/k;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_PLAYLIST_SHUFFLE"

    const-string v2, "INSTAPAPER_MOBILIZER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOOGLE_MOBILIZER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/context/k;->b:Lcom/appyet/mobile/context/k;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/appyet/mobile/context/k;->a:Lcom/appyet/mobile/context/k;

    goto :goto_0
.end method

.method public final i(I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_WIDGET_POSITION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final j()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_ARTICLE_LINESPACING"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final j(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_TRANSLATE_LANGUAGE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final k()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_ARTICLELIST_FONTSIZE"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final k(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_SLEEP_TIMER_PROGRESS"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final l(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_CLEAN_UP_UNREAD_DAYS"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_AUTO_HIDE_READ"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_CLEAN_UP_READ_DAYS"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final m()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_KEEPSTARREDUNREAD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_KEEPSTARTOP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_CONFIRMBULKACTIONS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SMARTRESIZEIMAGE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_VIEWIMAGEONTOUCH"

    iget-object v2, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->l()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SKIPIMAGEDIMENSION"

    const-string v2, "30"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_SKIPIMAGESIZE"

    const-string v2, "800"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_COLORTHEME"

    iget-object v2, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v2}, Lcom/appyet/mobile/manager/bu;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_CONTINUEONLIMIT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_DATETIMEFORMAT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Z
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_DISPLAYFAVORITE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final x()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_FEEDLIST_FONTSIZE"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final y()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS_DISPLAY_THUMBNAILDIMENSION"

    const-string v2, "70"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final z()I
    .locals 3

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DARK_THEME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    const-string v2, "SETTINGS_DISPLAY_FONTCOLOR_PRIMARY"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/mobile/manager/f;->b:Lcom/appyet/mobile/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/mobile/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method
