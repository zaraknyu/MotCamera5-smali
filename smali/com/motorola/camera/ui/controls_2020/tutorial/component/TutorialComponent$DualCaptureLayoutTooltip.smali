.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V
    .locals 6

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$r8$classId:I

    packed-switch p5, :pswitch_data_0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    move-object p1, p2

    const p2, 0x7f120614

    const p5, 0x7f1201fe

    invoke-direct/range {p0 .. p5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 p2, 0x1a

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(IZ)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void

    :pswitch_0
    move-object v1, p2

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    const p1, 0x7f1201fb

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const p1, 0x7f1201fe

    goto :goto_0

    :goto_1
    const v2, 0x7f120613

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 p2, 0x1a

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(IZ)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterLayoutListener()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterLayoutListener()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clickControl()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showDualCaptureTooltip(I)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showDualCaptureTooltip(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final show()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->showImpl()V

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0a0489

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->showImpl$1()V

    if-eqz v0, :cond_3

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public showImpl()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0705b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0705b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, v1, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0705bd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget v6, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    sub-float/2addr v1, v3

    div-float/2addr v1, v0

    sub-float/2addr v6, v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v6, v0

    iget-object v0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    iget v3, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    const/16 v3, 0x30

    int-to-float v7, v3

    iget v4, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v7, v4

    sub-float/2addr v0, v7

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    neg-float v6, v6

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_4

    float-to-int v1, v6

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    return-void

    :cond_4
    float-to-int v1, v6

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void
.end method

.method public showImpl$1()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0705b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0705b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, v1, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0705bd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget v6, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    sub-float/2addr v1, v3

    div-float/2addr v1, v0

    sub-float/2addr v6, v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v6, v1

    iget-object v1, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v1

    iget v4, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    neg-float v6, v6

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_4

    float-to-int v1, v6

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    return-void

    :cond_4
    float-to-int v1, v6

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void
.end method
