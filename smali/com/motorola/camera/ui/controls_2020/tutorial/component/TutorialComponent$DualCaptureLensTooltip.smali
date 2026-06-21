.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final offsetY:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V
    .locals 6

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f120616

    const v5, 0x7f1201fe

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 p1, 0x1a

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(IZ)V

    iput-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 p0, 0x11

    iput p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->offsetY:I

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterLayoutListener()V

    return-void
.end method

.method public final clickControl()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showDualCaptureTooltip(I)V

    return-void
.end method

.method public final show()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120616

    goto :goto_0

    :cond_0
    const v0, 0x7f120615

    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl(Landroid/view/View;)V

    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final showImpl(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget v3, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v4, 0x5a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_1

    :cond_0
    aget v3, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v3, p1

    aput v3, v1, v5

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v3, 0x7f0705af

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0705ae

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr v0, p1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_1
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0705bc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0705bd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v2, v2

    div-float v3, v2, p1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const v7, 0x7f070076

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    mul-float/2addr v6, v2

    sub-float/2addr v3, v6

    sub-float/2addr v3, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07006f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, p1

    add-float/2addr v0, v3

    aget p1, v1, v5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->offsetY:I

    sub-int/2addr p1, v1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_4

    neg-float v0, v0

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_6

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    return-void

    :cond_6
    float-to-int v0, v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void
.end method
