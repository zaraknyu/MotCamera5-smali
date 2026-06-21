.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final DISABLED_STATES:Landroid/util/ArraySet;

.field public static final ENABLED_STATES:Landroid/util/ArraySet;

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public bottomGuideLine:Landroidx/constraintlayout/widget/Guideline;

.field public captureButton:Landroid/widget/ImageButton;

.field public captureButtonLayout:Landroid/widget/FrameLayout;

.field public hideBySpotColorDrag:Z

.field public isSplitMode:Z

.field public leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

.field public pauseButton:Landroid/widget/ImageButton;

.field public pauseButtonLayout:Landroid/widget/FrameLayout;

.field public rightGuideLine:Landroidx/constraintlayout/widget/Guideline;

.field public topGuideLine:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->DISABLED_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->ENABLED_STATES:Landroid/util/ArraySet;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_PAUSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final animateShow()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->rightGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->topGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->bottomGuideLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButtonLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButtonLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a04df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->updateGuideLine(Z)V

    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->isSplitMode:Z

    return-void
.end method

.method public final onFoldScreenOrientationChanged(IIIZ)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->onConfigurationChanged(Z)V

    invoke-virtual {p0, p4}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->updateGuideLine(Z)V

    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->onConfigurationChanged(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->updateGuideLine(Z)V

    return-void
.end method

.method public final onFoldSplitChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->onConfigurationChanged(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->updateGuideLine(Z)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_15

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->DISABLED_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPausingForKnifeSwitch(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-nez p1, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :cond_5
    :goto_2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;ZZ)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->ENABLED_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_7

    :cond_a
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_5

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_PAUSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3

    :cond_f
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->hideBySpotColorDrag:Z

    if-eqz p1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_10
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_11
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_18

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_18

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_12
    :goto_3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_13
    :goto_4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_14
    :goto_5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_15
    :goto_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_7

    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    :goto_7
    return-void

    :cond_19
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_8

    :cond_1a
    move v3, v4

    :cond_1b
    :goto_8
    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v3, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateGuideLine(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->topGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->bottomGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->rightGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v6, :cond_7

    :goto_1
    return-void

    :cond_7
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    const/4 v8, -0x1

    const v9, 0x7f070075

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eqz p1, :cond_9

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v12, "mEventHandler"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getFoldGuideLine(Landroid/content/Context;Lcom/motorola/camera/EventListener;)Lkotlin/Pair;

    move-result-object v5

    iget-object v12, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarMarginDimen()F

    move-result v13

    float-to-int v13, v13

    iget-object v14, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v15, "mParentView"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v15

    iget-object v15, v15, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v15, v15, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarMarginDimen()F

    move-result v6

    float-to-int v6, v6

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v15, v17

    int-to-float v6, v6

    sub-float/2addr v15, v6

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v17

    sub-float/2addr v15, v6

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v15}, Landroid/view/View;->setTranslationX(F)V

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v7, v5, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v7, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    move v3, v10

    const/4 v10, 0x0

    move v5, v11

    const/4 v11, 0x7

    const/4 v9, 0x7

    move v14, v5

    move v12, v13

    move v13, v3

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v7, v5, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v7, v5, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v7, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v8, 0x4

    invoke-virtual {v7, v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v14, v9, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v7, v5, v13, v9, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v3, v8, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_2

    :cond_8
    const/4 v6, 0x3

    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v8, 0x4

    invoke-virtual {v7, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v14, v9, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v13, v9, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v0, v6, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto/16 :goto_3

    :cond_9
    move v13, v10

    move v14, v11

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v7, v3, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v7, v3, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v14, v9, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v13, v9, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v7, v3, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v7, v3, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v8, 0x4

    invoke-virtual {v7, v3, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v7, v3, v14, v6, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v4, v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v8, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_a
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v7, v2, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {v7, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v8, 0x4

    invoke-virtual {v7, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v7, v2, v13, v3, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v4, v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v7, v0, v8, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :cond_b
    :goto_3
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
