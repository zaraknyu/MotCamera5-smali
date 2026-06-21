.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$pageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017\u00a8\u0006\u0006"
    }
    d2 = {
        "com/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$pageChangeCallback$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$pageChangeCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$pageChangeCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->access$getViewPager$p(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$pageChangeCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->access$setCurrentStyle$p(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;I)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getWatermarkStyles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->access$getListener$p(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$WatermarkStyleChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$WatermarkStyleChangeListener;->onWatermarkStyleChanged(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->access$getWatermarkAdapter$p(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerAdapter;->setSelectedPosition(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
