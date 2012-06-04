.class public final Lcom/appyet/mobile/e/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v2, La/a/a/c;

    invoke-direct {v2}, La/a/a/c;-><init>()V

    array-length v0, p0

    invoke-virtual {v2, p0, v0}, La/a/a/c;->a([BI)V

    invoke-virtual {v2}, La/a/a/c;->b()V

    invoke-virtual {v2}, La/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, La/a/a/c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bg18030"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, "iso-8859-1"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v4, 0x100

    :try_start_1
    new-array v4, v4, [C

    :cond_2
    :goto_0
    if-ltz v3, :cond_5

    const/4 v3, 0x0

    array-length v5, v4

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_3
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v0

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v0

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/appyet/mobile/e/g;->a(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4, v1, p2}, Lcom/appyet/mobile/e/g;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/appyet/mobile/e/c;->a(Ljava/lang/Exception;)V

    goto :goto_3
.end method
