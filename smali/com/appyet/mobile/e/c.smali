.class public final Lcom/appyet/mobile/e/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Error;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "appyet"

    invoke-virtual {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "appyet"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
