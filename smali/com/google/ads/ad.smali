.class public final Lcom/google/ads/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/ads/ae;

.field private b:Lcom/google/ads/af;

.field private volatile c:Z

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/ae;Lcom/google/ads/af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    iput-object p2, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 5

    const-string v0, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v2, v0}, Lcom/google/ads/af;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/ads/ad;->b(Ljava/net/HttpURLConnection;)V

    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v2, v0}, Lcom/google/ads/af;->a(F)V

    iget-object v0, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->c()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/af;->a(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/ae;->a(I)V

    :cond_3
    :goto_3
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_2
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/af;->b(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_4
    return-void

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v0}, Lcom/google/ads/af;->b()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get refresh value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get timeout value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/ae;->a(I)V

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using default value instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    invoke-virtual {v2, v0}, Lcom/google/ads/ae;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/ad;->c:Z

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/ad;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/ad;->c:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/ad;->d:Z

    return-void
.end method

.method public final run()V
    .locals 7

    const/16 v6, 0x190

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ad;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/ad;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/af;

    invoke-virtual {v1}, Lcom/google/ads/af;->d()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "activity was null in AdHtmlLoader."

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v2, Lcom/google/ads/as;->d:Lcom/google/ads/as;

    invoke-virtual {v1, v2}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/ads/ad;->d:Z

    if-eqz v3, :cond_2

    const-string v3, "drt"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget v3, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    const-string v3, "X-Afma-drt-Cookie"

    const-string v4, "drt"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/util/AdUtil;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12c

    if-gt v2, v1, :cond_5

    if-ge v1, v6, :cond_5

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get redirect location from a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redirect."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v2, Lcom/google/ads/as;->d:Lcom/google/ads/as;

    invoke-virtual {v1, v2}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Received malformed ad url from javascript."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v1, Lcom/google/ads/as;->d:Lcom/google/ads/as;

    invoke-virtual {v0, v1}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V

    goto :goto_1

    :cond_3
    :try_start_5
    const-string v3, "Cookie"

    const-string v4, "drt"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_1
    move-exception v0

    const-string v1, "IOException connecting to ad url."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v1, Lcom/google/ads/as;->c:Lcom/google/ads/as;

    invoke-virtual {v0, v1}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V

    goto/16 :goto_1

    :cond_4
    :try_start_7
    invoke-direct {p0, v0}, Lcom/google/ads/ad;->a(Ljava/net/HttpURLConnection;)V

    iput-object v2, p0, Lcom/google/ads/ad;->e:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "An unknown error occurred in AdHtmlLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v1, Lcom/google/ads/as;->d:Lcom/google/ads/as;

    invoke-virtual {v0, v1}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/ads/ad;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    iget-boolean v3, p0, Lcom/google/ads/ad;->c:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response content is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response message is null or zero length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v2, Lcom/google/ads/as;->b:Lcom/google/ads/as;

    invoke-virtual {v1, v2}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    :cond_8
    :try_start_b
    iget-object v2, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    iget-object v3, p0, Lcom/google/ads/ad;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/google/ads/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_1

    :cond_9
    if-ne v1, v6, :cond_a

    :try_start_d
    const-string v1, "Bad request"

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v2, Lcom/google/ads/as;->a:Lcom/google/ads/as;

    invoke-virtual {v1, v2}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_1

    :cond_a
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/ae;

    sget-object v2, Lcom/google/ads/as;->d:Lcom/google/ads/as;

    invoke-virtual {v1, v2}, Lcom/google/ads/ae;->a(Lcom/google/ads/as;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_1
.end method
