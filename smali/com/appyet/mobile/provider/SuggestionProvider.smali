.class public Lcom/appyet/mobile/provider/SuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/mobile/provider/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".suggestion.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/appyet/mobile/provider/SuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    invoke-super {p0}, Landroid/content/SearchRecentSuggestionsProvider;->onCreate()Z

    move-result v0

    return v0
.end method
