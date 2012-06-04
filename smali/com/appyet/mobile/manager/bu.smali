.class public final Lcom/appyet/mobile/manager/bu;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private a:Landroid/content/Context;

.field private aa:Ljava/util/List;

.field private ab:Ljava/util/List;

.field private ac:Ljava/util/List;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WeChap3awEbr"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/appyet/mobile/manager/bu;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/appyet/mobile/manager/bu;->R()V

    return-void
.end method

.method private R()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appyet/mobile/manager/bu;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "true"

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->s:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->u:Ljava/lang/String;

    const-string v1, "a14dce8633cfeed"

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->v:Ljava/lang/String;

    const-string v1, "HEADER+FOOTER"

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Lcom/appyet/mobile/b/t;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appyet/mobile/activity/AboutActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/activity/AllActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/activity/MainActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/mobile/manager/bu;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/manager/bv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/manager/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appyet/mobile/manager/bl;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appyet/mobile/b/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/appyet/mobile/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "CONFIG_APPLICATION_GUID"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->c:Ljava/lang/String;

    const-string v1, "CONFIG_APPLICATION_TYPE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->d:Ljava/lang/String;

    const-string v1, "CONFIG_SUBSCRIPTION_EXPIRE_DATE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->e:Ljava/lang/String;

    const-string v1, "CONFIG_PACKAGE_NAME"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->f:Ljava/lang/String;

    const-string v1, "CONFIG_SOURCE_VERSION_NAME"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->g:Ljava/lang/String;

    const-string v1, "CONFIG_WAKE_LOCK_TAG"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->h:Ljava/lang/String;

    const-string v1, "CONFIG_APPLICATION_FOLDER"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->i:Ljava/lang/String;

    const-string v1, "CONFIG_ELITE_LINK"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->j:Ljava/lang/String;

    const-string v1, "CONFIG_CONTACT_US_EMAIL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->k:Ljava/lang/String;

    const-string v1, "CONFIG_SHARE_US_LINK"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->l:Ljava/lang/String;

    const-string v1, "CONFIG_SKIP_IMAGE_DIMENSION"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->m:Ljava/lang/String;

    const-string v1, "CONFIG_ALLOW_MANAGE_SOURCES"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->n:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_MENU_HELP_US"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->o:Ljava/lang/String;

    const-string v1, "CONFIG_ALLOW_FAVORITE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->p:Ljava/lang/String;

    const-string v1, "CONFIG_SYNC_SOURCE_ON_UPGRADE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->q:Ljava/lang/String;

    const-string v1, "CONFIG_ARTICLE_SHOW_SOURCE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->r:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_AD"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->s:Ljava/lang/String;

    const-string v1, "CONFIG_TRIAL_PERIOD"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->u:Ljava/lang/String;

    const-string v1, "CONFIG_ADMOB_PUBLISHER_ID"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->v:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TAB_LATEST"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->w:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TAB_UNREAD"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->x:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TAB_STAR"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->y:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TAB_PODCAST"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->z:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TAB_ALL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->A:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TAB_SOURCE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->B:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TAB_WEB"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->C:Ljava/lang/String;

    const-string v1, "CONFIG_SHOW_TABS"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->E:Ljava/lang/String;

    const-string v1, "CONFIG_WEB_TAB_URL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->S:Ljava/lang/String;

    const-string v1, "CONFIG_PRO_LICENSE_PACKAGE_NAME"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->U:Ljava/lang/String;

    const-string v1, "CONFIG_PRO_LINK"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->V:Ljava/lang/String;

    const-string v1, "CONFIG_FEEDBACK_EMAIL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->W:Ljava/lang/String;

    const-string v1, "CONFIG_HELP_LINK"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->X:Ljava/lang/String;

    const-string v1, "CONFIG_DEFAULT_THEME"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->D:Ljava/lang/String;

    const-string v1, "CONFIG_DEFAULT_UPDATE_INTERVAL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->F:Ljava/lang/String;

    const-string v1, "CONFIG_DEFAULT_GROUP_FEED"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->T:Ljava/lang/String;

    const-string v1, "CONFIG_DEFAULT_AUTO_UPDATE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->G:Ljava/lang/String;

    const-string v1, "CONFIG_DEFAULT_DISPLAY_MODE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->R:Ljava/lang/String;

    const-string v1, "CONFIG_AD_LOCATION"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->t:Ljava/lang/String;

    const-string v1, "CONFIG_GALLERY_NAVIGATOR"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->H:Ljava/lang/String;

    const-string v1, "CONFIG_TAB_ON_COLOR"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->I:Ljava/lang/String;

    const-string v1, "CONFIG_TAB_OFF_COLOR"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->J:Ljava/lang/String;

    const-string v1, "CONFIG_TAB_ICON_ALPHA"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->K:Ljava/lang/String;

    const-string v1, "CONFIG_ALLOW_FEED_PROPERTY"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->L:Ljava/lang/String;

    const-string v1, "CONFIG_ALLOW_MOBILIZE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->M:Ljava/lang/String;

    const-string v1, "CONFIG_ALLOW_DOWNLOAD_ARTICLE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->N:Ljava/lang/String;

    const-string v1, "CONFIG_ALLOW_RATTINGREMINDER"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->O:Ljava/lang/String;

    const-string v1, "CONFIG_GOOGLE_ANALYTIC_UA_CODE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->P:Ljava/lang/String;

    const-string v1, "CONFIG_SUPPORT_PODCAST"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->Q:Ljava/lang/String;

    const-string v1, "CONFIG_VIEW_IMAGE_ON_TOUCH"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->Y:Ljava/lang/String;

    const-string v1, "CONFIG_IMAGE_VIEWER_SCHEME"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->Z:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->aa:Ljava/util/List;

    const-string v1, "SOURCE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    new-instance v4, Lcom/appyet/mobile/c/e;

    invoke-direct {v4}, Lcom/appyet/mobile/c/e;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "LocaleCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/e;->i:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "GroupTitle"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/e;->h:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "DefaultTag"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Encoding"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/e;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IsAutoDownloadArticle"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/appyet/mobile/c/e;->d:Z

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IsAutoDownloadPodcast"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/appyet/mobile/c/e;->e:Z

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IsSelected"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/appyet/mobile/c/e;->f:Z

    iget-object v5, p0, Lcom/appyet/mobile/manager/bu;->aa:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->ab:Ljava/util/List;

    const-string v1, "LANGUAGE"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    new-instance v4, Lcom/appyet/mobile/c/g;

    invoke-direct {v4}, Lcom/appyet/mobile/c/g;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Entry"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/c/g;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/appyet/mobile/manager/bu;->ab:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :try_start_2
    const-string v1, "SOURCE_PROVIDER"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->ac:Ljava/util/List;

    const-string v1, "SOURCE_PROVIDER"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/appyet/mobile/manager/bu;->ac:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Entry"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/appyet/mobile/manager/bu;->ac:Ljava/util/List;

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    :cond_4
    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/mobile/manager/bu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "true"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->s:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->u:Ljava/lang/String;

    const-string v0, "a14f5c1cb447329"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->v:Ljava/lang/String;

    const-string v0, "HEADER+FOOTER"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->t:Ljava/lang/String;

    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bu;->d:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bu;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bu;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "true"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->s:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->u:Ljava/lang/String;

    const-string v0, "a14f5c1c4057459"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->v:Ljava/lang/String;

    const-string v0, "HEADER+FOOTER"

    iput-object v0, p0, Lcom/appyet/mobile/manager/bu;->t:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final C()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->ab:Ljava/util/List;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/mobile/manager/bu;->E:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SOURCE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/appyet/mobile/manager/bu;->x()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final F()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->ac:Ljava/util/List;

    return-object v0
.end method

.method public final G()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->aa:Ljava/util/List;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->K:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->W:Ljava/lang/String;

    goto :goto_0
.end method

.method public final P()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->X:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->X:Ljava/lang/String;

    goto :goto_0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->G:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/appyet/mobile/manager/ax;
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->R:Ljava/lang/String;

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/mobile/manager/ax;->a:Lcom/appyet/mobile/manager/ax;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/appyet/mobile/manager/ax;->b:Lcom/appyet/mobile/manager/ax;

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->F:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->T:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->Y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->O:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/mobile/manager/bu;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
