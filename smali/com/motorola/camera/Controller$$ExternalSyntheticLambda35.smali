.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/constraintlayout/widget/Guideline;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;ZII)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    iput p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZI)V
    .locals 0

    .line 3
    iput p4, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    iput-boolean p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    :goto_0
    iput p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateFrameLayoutParams$1()V

    :cond_1
    iget-boolean p0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateToastLayout(Z)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    int-to-long v1, v1

    iget-boolean p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->showTimer(JZ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iget-boolean v1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    iget p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/LinkedHashSet;

    iget v2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    if-ne p0, v3, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->notifyVisibilityChange(Z)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->notifyVisibilityChange(Z)V

    :cond_6
    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/RendererHolder;

    iget v2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v3

    new-instance v4, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    iget-boolean p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    invoke-direct {v4, v3, v2, v0, p0}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V

    const/16 p0, 0x409

    invoke-virtual {v1, v3, p0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCameraPaneView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    sget v3, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    const/16 v4, 0x10e

    const/4 v5, 0x1

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_7

    if-ne v3, v4, :cond_8

    :cond_7
    iget-boolean v3, v0, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    if-eqz v3, :cond_8

    const/4 p0, 0x5

    invoke-virtual {v2, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput-boolean v5, v0, Lcom/motorola/camera/Controller;->mDelayDualPane:Z

    goto :goto_6

    :cond_8
    iget-boolean v3, v0, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    if-eqz v3, :cond_9

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_9
    iget-boolean v3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$1:Z

    const/4 v7, -0x1

    if-eqz v3, :cond_d

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x24

    if-lt v8, v9, :cond_a

    invoke-virtual {v2, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/shared/OrientationEvent;->updateDisplayOrientation()V

    sget v8, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    if-eq v8, v6, :cond_c

    if-ne v8, v4, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v2, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_d
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x9

    const/16 v5, 0xb

    if-nez v3, :cond_e

    iget p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;->f$2:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_5

    :cond_e
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/UIManager;->onFoldScreenPaneChanged(Z)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
