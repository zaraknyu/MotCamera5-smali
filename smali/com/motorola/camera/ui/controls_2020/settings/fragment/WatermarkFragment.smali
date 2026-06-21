.class public Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$WatermarkStyleChangeListener;
.implements Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J&\u0010\u001e\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00102\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010(\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0010H\u0002J\u0008\u0010)\u001a\u00020&H\u0016J\u0008\u0010*\u001a\u00020&H\u0016J\u0010\u0010+\u001a\u00020&2\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u000200H\u0002J\u0018\u00101\u001a\u00020&2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0002J\u0008\u00106\u001a\u00020&H\u0002J\u0018\u00107\u001a\u00020&2\u0006\u00108\u001a\u00020\"2\u0006\u00109\u001a\u000200H\u0002J\u0008\u0010:\u001a\u00020&H\u0002J\"\u0010;\u001a\u00020&2\u0006\u0010/\u001a\u0002002\u0006\u0010\'\u001a\u00020\u00102\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0002J\u001e\u0010>\u001a\u00020&2\u0006\u00104\u001a\u0002052\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0010\u0010?\u001a\u00020&2\u0006\u00104\u001a\u000205H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$WatermarkStyleChangeListener;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;",
        "<init>",
        "()V",
        "logoSwitch",
        "Lcom/google/android/material/materialswitch/MaterialSwitch;",
        "dateSwitch",
        "timeSwitch",
        "shootingParametersSwitch",
        "productNameSwitch",
        "signature",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;",
        "switchWidget",
        "titleBackground",
        "Landroid/view/View;",
        "watermarkPreviewPagerView",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;",
        "switchLayout",
        "Landroid/widget/LinearLayout;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "setCoroutineScope",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "pageContentList",
        "",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "updateHorizontalMargin",
        "onResume",
        "onDestroy",
        "onSignatureChanged",
        "newSignature",
        "",
        "updateWatermarkFragmentEnabledState",
        "isEnabled",
        "",
        "disableWatermarkOption",
        "watermarkOptions",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;",
        "style",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
        "enableWatermarkOption",
        "setViewGroupEnabled",
        "viewGroup",
        "enabled",
        "setupListeners",
        "setTitleBackgroundColor",
        "context",
        "Landroid/content/Context;",
        "applyPageContentSettings",
        "onWatermarkStyleChanged",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field private logoSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field private final pageContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;",
            ">;"
        }
    .end annotation
.end field

.field private productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field private shootingParametersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field private signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

.field private switchLayout:Landroid/widget/LinearLayout;

.field private switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field private timeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field private titleBackground:Landroid/view/View;

.field private watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;


# direct methods
.method public static synthetic $r8$lambda$4mFwhMNQNxW-ozbJAiNoviC9-zE(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->onWatermarkStyleChanged$lambda$20(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7N-rwexvaf-sxFcvV73zpbGP7tM(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$13(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FCtNU_OH3YGFGqZevkLIIi6Rtos(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$9$lambda$8(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNlHQRyNdJF1iNeOgmIQ_2GW_MA(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->updateHorizontalMargin$lambda$2$lambda$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QVd28-0FEuT2wiLL0OvsTQ9GDJM(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$13$lambda$12(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SwFZEPR1zIkT8rLP4vVr9EomgY4(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$9(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aNjEWrQCFMKyrBLhR8YfGokO4Jg(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$15$lambda$14(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$giexvuOtArgSahF4awm3lO6nWvs(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$7$lambda$6(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gy7aDr5PSk14uDcM-JPZpAPOdNk(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$11$lambda$10(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jnM77Ye8WFTu-_Rkzd7eMDu65EM(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->onSignatureChanged$lambda$3(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVJ8IhWFVnHcHtanqJVcUdhT-o0(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$5$lambda$4(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uQfXOQVd2FCwA-O9f1oNFoAsSSE(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$7(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEJeCqkB5TiU7gGmOYvC3jlIqYs(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$15(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrYMGiFGrRwIiBLRw30QzvLovvo(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$5(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zDvGs7Utd446QJz2CMc_YvPngBA(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners$lambda$11(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;->getDefaultPageContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->pageContentList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getWatermarkPreviewPagerView$p(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    return-object p0
.end method

.method private final applyPageContentSettings(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;->getWatermarkStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    if-eqz v0, :cond_1f

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1d

    instance-of v2, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object p2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->logoSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string v4, "logoSwitch"

    if-eqz v2, :cond_1c

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getLogoEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->logoSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string v5, "dateSwitch"

    if-eqz v2, :cond_1a

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->timeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string/jumbo v6, "timeSwitch"

    if-eqz v2, :cond_18

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->timeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->shootingParametersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string/jumbo v7, "shootingParametersSwitch"

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getShootingParamsEnabled()Z

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->shootingParametersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string/jumbo v8, "productNameSwitch"

    if-eqz v2, :cond_14

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result p2

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->logoSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p2, :cond_12

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;->getShowLogo()Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p2, :cond_11

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;->getShowData()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->timeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p2, :cond_10

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;->getShowTime()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->shootingParametersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p2, :cond_f

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;->getShowShootingParameters()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p2, :cond_e

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;->getShowDeviceWatermark()Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v3

    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    instance-of p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    const-string/jumbo v0, "signature"

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    const/4 v3, 0x1

    :cond_8
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setEnable(Z)V

    goto :goto_6

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    if-eqz p1, :cond_d

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setEnable(Z)V

    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->updateSignatureText()V

    return-void

    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_17
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_18
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_19
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1d
    const-string/jumbo p0, "switchLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1e
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1f
    return-void
.end method

.method private final disableWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V
    .locals 2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->isAllFalse()Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->updateWatermarkFragmentEnabledState(Z)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->titleBackground:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setTitleBackgroundColor(ZLandroid/view/View;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string/jumbo v1, "switchWidget"

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo p0, "titleBackground"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private final enableWatermarkOption()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->isAllFalse()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string v4, "dateSwitch"

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setDateEnabled(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const-string/jumbo v4, "productNameSwitch"

    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setDeviceWatermarkEnabled(Z)V

    invoke-static {v2, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->updateWatermarkOptions(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void

    :cond_5
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private static final onSignatureChanged$lambda$3(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onWatermarkStyleChanged$lambda$20(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->pageContentList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->applyPageContentSettings(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Ljava/util/List;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setTitleBackgroundColor(ZLandroid/view/View;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "mutate(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    const p1, 0x7f060318

    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const p1, 0x7f060319

    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    :goto_0
    instance-of p1, p0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setViewGroupEnabled(Landroid/view/ViewGroup;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a03ef

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setViewGroupEnabled(Landroid/view/ViewGroup;Z)V

    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final setupListeners()V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;I)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->logoSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v1, :cond_4

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;I)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v1, :cond_3

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;I)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->timeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v1, :cond_2

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;I)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->shootingParametersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v1, :cond_1

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;I)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const-string/jumbo p0, "productNameSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo p0, "shootingParametersSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo p0, "timeSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p0, "dateSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p0, "logoSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string/jumbo p0, "switchWidget"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private static final setupListeners$lambda$11(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setTimeEnabled(Z)V

    invoke-static {v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->updateWatermarkOptions(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    invoke-direct {p0, v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->disableWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$11$lambda$10(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$13(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setShootingParamsEnabled(Z)V

    invoke-static {v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->updateWatermarkOptions(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    invoke-direct {p0, v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->disableWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$13$lambda$12(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$15(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setEnable(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setDeviceWatermarkEnabled(Z)V

    invoke-static {v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->updateWatermarkOptions(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    invoke-direct {p0, v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->disableWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo p0, "signature"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private static final setupListeners$lambda$15$lambda$14(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$5(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->updateWatermarkFragmentEnabledState(Z)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->titleBackground:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p3, p2, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setTitleBackgroundColor(ZLandroid/view/View;Landroid/content/Context;)V

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->enableWatermarkOption()V

    :cond_0
    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v0, 0xc

    invoke-direct {p2, p0, p3, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string/jumbo p0, "titleBackground"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$5$lambda$4(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->isUserInputEnabled(Z)V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$7(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setLogoEnabled(Z)V

    invoke-static {v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->updateWatermarkOptions(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    invoke-direct {p0, v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->disableWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;

    const/4 p3, 0x5

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$7$lambda$6(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$9(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Landroid/os/Handler;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setDateEnabled(Z)V

    invoke-static {v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->updateWatermarkOptions(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    invoke-direct {p0, v0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->disableWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupListeners$lambda$9$lambda$8(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateHorizontalMargin(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->getHorizontalMargin(Z)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private static final updateHorizontalMargin$lambda$2$lambda$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final updateWatermarkFragmentEnabledState(Z)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    const-string/jumbo v1, "watermarkPreviewPagerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setViewGroupEnabled(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "switchLayout"

    if-eqz v0, :cond_9

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setViewGroupEnabled(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz v0, :cond_8

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->getCurrentStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    instance-of v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    const-string/jumbo v3, "signature"

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setEnable(Z)V

    return-void

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setEnable(Z)V

    return-void

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06042e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onCreateView$1;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, p3, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    const p0, 0x7f0d010c

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->unload()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v1, 0x7f1202d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    return-void
.end method

.method public onSignatureChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "newSignature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0a0520

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->updateHorizontalMargin(Landroid/view/View;)V

    const p2, 0x7f0a051f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    const p2, 0x7f0a0442

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0293

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->logoSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const p2, 0x7f0a0127

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->dateSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const p2, 0x7f0a046f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->timeSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const p2, 0x7f0a03f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->shootingParametersSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const p2, 0x7f0a037c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->productNameSwitch:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const p2, 0x7f0a03fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->signature:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit;->setSignatureChangedListener(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkEdit$OnSignatureChangedListener;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->pageContentList:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->applyPageContentSettings(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Ljava/util/List;)V

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->watermarkPreviewPagerView:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->setOnWatermarkStyleChangeListener(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView$WatermarkStyleChangeListener;)V

    const p2, 0x7f0a0441

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;

    const p2, 0x7f0a047b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->titleBackground:Landroid/view/View;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1;

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, p2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->switchWidget:Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->titleBackground:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setTitleBackgroundColor(ZLandroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->updateWatermarkFragmentEnabledState(Z)V

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->setupListeners()V

    return-void

    :cond_1
    const-string/jumbo p0, "titleBackground"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo p0, "switchWidget"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo p0, "signature"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onWatermarkStyleChanged(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V
    .locals 3

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setCoroutineScope(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method
