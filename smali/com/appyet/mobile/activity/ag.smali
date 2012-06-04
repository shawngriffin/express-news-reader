.class final Lcom/appyet/mobile/activity/ag;
.super Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;


# instance fields
.field private synthetic a:Lcom/appyet/mobile/activity/MainActivity;


# direct methods
.method synthetic constructor <init>(Lcom/appyet/mobile/activity/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/mobile/activity/ag;-><init>(Lcom/appyet/mobile/activity/MainActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/appyet/mobile/activity/MainActivity;B)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/activity/ag;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-direct {p0}, Lcom/appyet/mobile/view/tabview/ScrollableTabActivity$SliderBarActivityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onTabChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/mobile/activity/ag;->a:Lcom/appyet/mobile/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/mobile/activity/MainActivity;->c(Lcom/appyet/mobile/activity/MainActivity;)V

    return-void
.end method
