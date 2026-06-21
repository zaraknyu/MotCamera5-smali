.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final offsetX:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;II)V
    .locals 6

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f120617

    const v5, 0x7f1201fb

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 p1, 0x1a

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(IZ)V

    iput-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/high16 p0, 0x42540000    # 53.0f

    iput p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->offsetX:F

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterLayoutListener()V

    return-void
.end method

.method public final clickControl()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    return-void
.end method

.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->showImpl$2()V

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public final showImpl$2()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0705b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0705b6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0705af

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v5, v2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0705bc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0705bd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v7, v7

    const v8, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v7, v8

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v8

    const-string v9, "getLayoutManager(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v8

    if-eqz v8, :cond_2

    int-to-float v4, v4

    div-float/2addr v7, v4

    :cond_2
    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v0, v0

    const v4, 0x3cf5c28f    # 0.03f

    mul-float/2addr v4, v0

    iget v8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->offsetX:F

    add-float/2addr v4, v8

    div-float/2addr v0, v2

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    sub-float/2addr v0, v5

    div-float/2addr v7, v2

    sub-float/2addr v0, v7

    sub-float/2addr v0, v4

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCapturePIPVerticalGuideline()F

    move-result v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x800033

    goto :goto_2

    :cond_3
    const v1, 0x800035

    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    float-to-int v0, v3

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    return-void

    :cond_5
    float-to-int v0, v0

    float-to-int v2, v3

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void
.end method
