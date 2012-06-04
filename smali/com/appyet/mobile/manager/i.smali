.class public final Lcom/appyet/mobile/manager/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Locale;

.field public static b:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/appyet/mobile/manager/i;->b:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->d:Lcom/appyet/mobile/manager/bu;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bu;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/g;

    iget-object v3, v0, Lcom/appyet/mobile/c/g;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/appyet/mobile/c/g;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    array-length v3, v1

    if-lez v3, :cond_4

    const/4 v0, 0x0

    aget-object v0, v1, v0

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/c/g;

    iget-object v3, v0, Lcom/appyet/mobile/c/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/appyet/mobile/c/g;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v3, v1

    move-object v2, v1

    :goto_0
    array-length v1, v3

    if-le v1, v4, :cond_1

    const/4 v0, 0x1

    aget-object v0, v3, v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/context/ApplicationContext;

    invoke-static {v0}, Lcom/appyet/mobile/manager/i;->a(Lcom/appyet/mobile/context/ApplicationContext;)V

    return-void
.end method

.method public static a(Lcom/appyet/mobile/context/ApplicationContext;)V
    .locals 3

    sget-object v0, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/f;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appyet/mobile/manager/i;->a(Lcom/appyet/mobile/context/ApplicationContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appyet/mobile/manager/i;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    iget-object v0, p0, Lcom/appyet/mobile/context/ApplicationContext;->c:Lcom/appyet/mobile/manager/f;

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/manager/f;->b(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sget-object v1, Lcom/appyet/mobile/manager/i;->a:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appyet/mobile/context/ApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
