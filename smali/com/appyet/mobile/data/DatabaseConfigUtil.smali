.class public Lcom/appyet/mobile/data/DatabaseConfigUtil;
.super Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    const-string v0, "ormlite_config.txt"

    invoke-static {v0}, Lcom/appyet/mobile/data/DatabaseConfigUtil;->writeConfigFile(Ljava/lang/String;)V

    return-void
.end method
