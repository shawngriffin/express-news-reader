.class final Lcom/appyet/mobile/activity/ck;
.super Lcom/appyet/mobile/b/k;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private synthetic c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/b/k;-><init>()V

    iput-object p2, p0, Lcom/appyet/mobile/activity/ck;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/mobile/activity/ck;->b:Ljava/util/List;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/appyet/mobile/c/c;

    invoke-direct {v1}, Lcom/appyet/mobile/c/c;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.google.com/reader/api/0/feed-finder?q="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/appyet/mobile/activity/ck;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&output=json&num=50&start=0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/mobile/c/c;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v2}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->a(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/mobile/context/ApplicationContext;->e:Lcom/appyet/mobile/manager/bv;

    invoke-virtual {v2, v1}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/c;)Lcom/appyet/mobile/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->a(Lcom/appyet/mobile/c/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/appyet/mobile/c/d;->b:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lcom/appyet/mobile/e/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    new-instance v4, Lcom/appyet/mobile/g/a;

    invoke-direct {v4}, Lcom/appyet/mobile/g/a;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/g/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "feed"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "href"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/g/a;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/appyet/mobile/g/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/appyet/mobile/activity/ck;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->a(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Lcom/appyet/mobile/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/mobile/context/ApplicationContext;->f:Lcom/appyet/mobile/manager/bo;

    invoke-virtual {v0}, Lcom/appyet/mobile/manager/bo;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/mobile/data/Feed;

    iget-object v1, p0, Lcom/appyet/mobile/activity/ck;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/mobile/g/a;

    iget-object v6, v1, Lcom/appyet/mobile/g/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/appyet/mobile/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/appyet/mobile/g/a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    :goto_3
    return-object v3

    :cond_4
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    invoke-static {v2}, Lcom/appyet/mobile/manager/bv;->b(Lcom/appyet/mobile/c/d;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/mobile/activity/ck;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/mobile/b/k;->a()V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->f(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->g(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/mobile/b/k;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    new-instance v1, Lcom/appyet/mobile/d/o;

    iget-object v2, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    iget-object v3, p0, Lcom/appyet/mobile/activity/ck;->b:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/appyet/mobile/d/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->a(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;Lcom/appyet/mobile/d/o;)Lcom/appyet/mobile/d/o;

    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->c(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->b(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Lcom/appyet/mobile/d/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->c(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->e(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)V

    iget-object v0, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->f(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    const/high16 v2, 0x7f0b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->c(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/appyet/mobile/activity/ck;->c:Lcom/appyet/mobile/activity/ManageSourceSearchActivity;

    invoke-static {v1}, Lcom/appyet/mobile/activity/ManageSourceSearchActivity;->d(Lcom/appyet/mobile/activity/ManageSourceSearchActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
