.class public Lcom/appyet/mobile/view/scrollview/ObservableScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private scrollViewListener:Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->scrollViewListener:Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->scrollViewListener:Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->scrollViewListener:Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->scrollViewListener:Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->scrollViewListener:Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;->onScrollChanged(Lcom/appyet/mobile/view/scrollview/ObservableScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/mobile/view/scrollview/ObservableScrollView;->scrollViewListener:Lcom/appyet/mobile/view/scrollview/OnScrollViewListener;

    return-void
.end method
