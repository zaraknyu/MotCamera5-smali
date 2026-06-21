.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;

.field public static final videoTimerCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;


# instance fields
.field public codecVideoRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

.field public final elapsedTimeTextView$delegate:Ljava/lang/Object;

.field public fixedWidth:I

.field public isBriefHideForControlBar:Z

.field public isControlPanelShown:Z

.field public isIndicationWakeUpEnable:Z

.field public isPaused:Z

.field public isSplitScreen:Z

.field public final lengthTextView$delegate:Ljava/lang/Object;

.field public final mApplyPreviewDoneListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public final mControlBarDetailListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mIdleState:Z

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final recorderTimingTask:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

.field public recordingOrientation:I

.field public final settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final timelapseFormatStr$delegate:Ljava/lang/Object;

.field public final timelapseGroup$delegate:Ljava/lang/Object;

.field public updateCounterRunnable:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;

.field public final videoLayout$delegate:Ljava/lang/Object;

.field public final videoMaxDuration$delegate:Ljava/lang/Object;


# direct methods
.method public static $r8$lambda$jlof0ei-Wb7jque4Z_fP0XXSKzI(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V
    .locals 0

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void
.end method

.method public static $r8$lambda$yHcMXStXsvjDaLmbLmk01HtbzZE(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSplitScreen:Z

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v3, Lcom/motorola/camera/PermissionCallback;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    invoke-virtual {v3, v2}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v3, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArraySet;

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoTimerCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoLayout$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->lengthTextView$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->elapsedTimeTextView$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->timelapseGroup$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoMaxDuration$delegate:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->timelapseFormatStr$delegate:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recorderTimingTask:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_BAR_DETAIL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->mControlBarDetailListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/16 p2, 0xd

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->mApplyPreviewDoneListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x10

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final animateHide()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final animateShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getLengthTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->lengthTextView$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoLayout$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->refreshUIAnimation$2()V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$inflateViewStub$2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$inflateViewStub$2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public final isSmallCli()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final refreshUIAnimation$2()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    const/16 v4, 0x168

    iget v5, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recordingOrientation:I

    if-eqz v3, :cond_1

    rsub-int v5, v5, 0x168

    :cond_1
    const/16 v6, 0xb4

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    if-eq v5, v8, :cond_9

    if-eq v5, v6, :cond_6

    if-eq v5, v7, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v5

    int-to-float v12, v4

    sub-float/2addr v12, v5

    cmpg-float v13, v12, v11

    if-gez v13, :cond_2

    add-float/2addr v12, v10

    :cond_2
    cmpl-float v9, v12, v9

    if-lez v9, :cond_3

    :goto_1
    sub-float/2addr v12, v10

    :cond_3
    add-float/2addr v5, v12

    :goto_2
    move v9, v5

    move v5, v2

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v5

    iget v12, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recordingOrientation:I

    rsub-int v12, v12, 0x168

    int-to-float v12, v12

    sub-float/2addr v12, v5

    cmpg-float v13, v12, v11

    if-gez v13, :cond_5

    add-float/2addr v12, v10

    :cond_5
    cmpl-float v9, v12, v9

    if-lez v9, :cond_3

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v5

    int-to-float v12, v4

    sub-float/2addr v12, v5

    cmpg-float v13, v12, v11

    if-gez v13, :cond_7

    add-float/2addr v12, v10

    :cond_7
    cmpl-float v9, v12, v9

    if-lez v9, :cond_8

    sub-float/2addr v12, v10

    :cond_8
    add-float/2addr v5, v12

    :goto_3
    neg-float v2, v2

    goto :goto_2

    :cond_9
    if-nez v3, :cond_a

    move v5, v7

    goto :goto_4

    :cond_a
    move v5, v8

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v12

    rsub-int v5, v5, 0x168

    int-to-float v5, v5

    sub-float/2addr v5, v12

    cmpg-float v13, v5, v11

    if-gez v13, :cond_b

    add-float/2addr v5, v10

    :cond_b
    cmpl-float v9, v5, v9

    if-lez v9, :cond_c

    sub-float/2addr v5, v10

    :cond_c
    add-float/2addr v5, v12

    goto :goto_3

    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_6

    :cond_d
    move v3, v11

    :goto_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v5

    const-string v12, "getLayoutManager(...)"

    if-eqz v5, :cond_e

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    :goto_7
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v13

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_f

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v14

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v12

    if-nez v12, :cond_f

    const/4 v12, 0x1

    goto :goto_8

    :cond_f
    const/4 v12, 0x0

    :goto_8
    iget-object v14, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0701a8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    iget-object v15, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x0

    const v10, 0x7f0701a7

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v15

    iget v11, v13, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v15, v11

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v11

    if-nez v11, :cond_10

    move v11, v15

    goto :goto_9

    :cond_10
    move v11, v10

    :goto_9
    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v7, 0x7f0700af

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    const-string v8, "null cannot be cast to non-null type android.view.View"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v8

    if-nez v8, :cond_11

    move/from16 v17, v14

    goto :goto_a

    :cond_11
    const/16 v17, 0x0

    :goto_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v19, v19, v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v20, v20, v8

    if-eqz v9, :cond_12

    iget v8, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recordingOrientation:I

    sub-int/2addr v4, v8

    goto :goto_b

    :cond_12
    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recordingOrientation:I

    :goto_b
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v8

    if-nez v8, :cond_13

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v8, v8, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v8, :cond_13

    const/4 v8, 0x1

    goto :goto_c

    :cond_13
    move/from16 v8, v16

    :goto_c
    const/16 v0, 0x5a

    if-eq v4, v0, :cond_16

    const/16 v0, 0xb4

    if-eq v4, v0, :cond_15

    const/16 v0, 0x10e

    if-eq v4, v0, :cond_14

    move-object/from16 v21, v2

    const/4 v0, 0x2

    int-to-float v2, v0

    div-float v2, v20, v2

    :goto_d
    add-float v2, v2, v17

    :goto_e
    const/16 v0, 0x5a

    goto :goto_10

    :cond_14
    move-object/from16 v21, v2

    const/4 v0, 0x2

    int-to-float v2, v0

    div-float v2, v19, v2

    goto :goto_d

    :cond_15
    move-object/from16 v21, v2

    const/4 v0, 0x2

    int-to-float v2, v0

    div-float v2, v20, v2

    :goto_f
    sub-float v2, v17, v2

    goto :goto_e

    :cond_16
    move-object/from16 v21, v2

    const/4 v0, 0x2

    int-to-float v2, v0

    div-float v2, v19, v2

    goto :goto_f

    :goto_10
    if-eq v4, v0, :cond_25

    const/16 v0, 0xb4

    if-eq v4, v0, :cond_20

    const/16 v0, 0x10e

    if-eq v4, v0, :cond_1b

    if-eqz v8, :cond_17

    const/4 v0, 0x2

    :goto_11
    int-to-float v6, v0

    div-float v6, v20, v6

    :goto_12
    add-float/2addr v6, v14

    :goto_13
    const/16 v12, 0x5a

    goto/16 :goto_1b

    :cond_17
    const/4 v0, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v17

    if-eqz v17, :cond_18

    :goto_14
    int-to-float v6, v0

    div-float v6, v20, v6

    :goto_15
    add-float/2addr v6, v10

    goto :goto_13

    :cond_18
    if-eqz v12, :cond_19

    if-nez v9, :cond_19

    :goto_16
    int-to-float v6, v6

    int-to-float v12, v0

    div-float v12, v20, v12

    sub-float/2addr v6, v12

    sub-float/2addr v6, v14

    goto :goto_13

    :cond_19
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v12

    if-eqz v12, :cond_1a

    :goto_17
    goto :goto_11

    :cond_1a
    int-to-float v6, v6

    int-to-float v12, v0

    div-float/2addr v6, v12

    goto :goto_13

    :cond_1b
    const/4 v0, 0x2

    if-eqz v8, :cond_1c

    :goto_18
    int-to-float v6, v0

    div-float v6, v19, v6

    goto :goto_12

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v17

    if-eqz v17, :cond_1d

    :goto_19
    int-to-float v6, v0

    div-float v6, v19, v6

    goto :goto_15

    :cond_1d
    if-eqz v12, :cond_1e

    if-nez v9, :cond_1e

    goto :goto_16

    :cond_1e
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v12

    if-eqz v12, :cond_1f

    goto :goto_18

    :cond_1f
    int-to-float v6, v6

    sub-float/2addr v6, v14

    int-to-float v12, v0

    div-float v12, v19, v12

    :goto_1a
    sub-float/2addr v6, v12

    goto :goto_13

    :cond_20
    const/4 v0, 0x2

    if-eqz v8, :cond_21

    goto :goto_17

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v17

    if-eqz v17, :cond_22

    goto :goto_14

    :cond_22
    if-eqz v12, :cond_23

    if-nez v9, :cond_23

    goto :goto_16

    :cond_23
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v12

    if-eqz v12, :cond_1a

    int-to-float v12, v0

    div-float v12, v20, v12

    add-float/2addr v12, v14

    if-eqz v9, :cond_24

    int-to-float v6, v6

    goto :goto_1a

    :cond_24
    move v6, v12

    goto :goto_13

    :cond_25
    const/4 v0, 0x2

    if-eqz v8, :cond_26

    goto :goto_18

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v17

    if-eqz v17, :cond_27

    goto :goto_19

    :cond_27
    if-eqz v12, :cond_28

    if-nez v9, :cond_28

    goto :goto_16

    :cond_28
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v6

    goto :goto_18

    :goto_1b
    if-eq v4, v12, :cond_2b

    const/16 v12, 0xb4

    if-eq v4, v12, :cond_2a

    const/16 v12, 0x10e

    if-eq v4, v12, :cond_29

    int-to-float v12, v0

    div-float v12, v19, v12

    add-float/2addr v12, v11

    :goto_1c
    const/4 v0, 0x1

    goto :goto_1e

    :cond_29
    int-to-float v12, v0

    div-float v12, v20, v12

    :goto_1d
    add-float/2addr v12, v11

    add-float v12, v12, v19

    goto :goto_1c

    :cond_2a
    int-to-float v12, v0

    div-float v12, v19, v12

    goto :goto_1d

    :cond_2b
    add-float v11, v11, v19

    int-to-float v12, v0

    div-float v0, v20, v12

    sub-float v12, v11, v0

    goto :goto_1c

    :goto_1e
    int-to-float v11, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v11, v0

    mul-float v11, v11, v19

    const/16 v0, 0x5a

    if-eq v4, v0, :cond_36

    const/16 v0, 0xb4

    if-eq v4, v0, :cond_33

    const/16 v0, 0x10e

    if-eq v4, v0, :cond_2f

    if-eqz v8, :cond_2c

    const/4 v0, 0x2

    :goto_1f
    int-to-float v3, v0

    div-float v19, v19, v3

    add-float v19, v19, v14

    goto/16 :goto_24

    :cond_2c
    const/4 v0, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v4

    if-eqz v4, :cond_2d

    :goto_20
    int-to-float v3, v0

    div-float v19, v19, v3

    add-float v19, v19, v10

    goto/16 :goto_24

    :cond_2d
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_2e

    :goto_21
    goto :goto_1f

    :cond_2e
    int-to-float v3, v0

    div-float/2addr v7, v3

    add-float v19, v7, v15

    goto/16 :goto_24

    :cond_2f
    const/4 v0, 0x2

    if-eqz v8, :cond_30

    :goto_22
    int-to-float v3, v0

    div-float v20, v20, v3

    add-float v19, v20, v14

    goto/16 :goto_24

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v4

    if-eqz v4, :cond_31

    :goto_23
    int-to-float v3, v0

    div-float v20, v20, v3

    add-float v19, v20, v10

    goto :goto_24

    :cond_31
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_22

    :cond_32
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move/from16 v19, v3

    goto :goto_24

    :cond_33
    const/4 v0, 0x2

    if-eqz v8, :cond_34

    goto :goto_21

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_20

    :cond_35
    if-eqz v5, :cond_2e

    invoke-virtual {v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v3

    iget v4, v13, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v3, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float v19, v19, v5

    sub-float v4, v4, v19

    sub-float/2addr v4, v3

    sub-float v19, v4, v14

    goto :goto_24

    :cond_36
    const/4 v0, 0x2

    if-eqz v8, :cond_37

    goto :goto_22

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isSmallCli()Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_23

    :cond_38
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_22

    :cond_39
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    move/from16 v19, v0

    :goto_24
    sub-float/2addr v6, v2

    if-eqz v9, :cond_3a

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v6, v0

    :cond_3a
    sub-float v19, v19, v12

    sub-float v19, v19, v11

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v6, v0, v16

    const/16 v18, 0x1

    aput v19, v0, v18

    aget v2, v0, v16

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    aget v0, v0, v18

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_3b
    return-void
.end method

.method public final resetCounter()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2, v3}, Lcom/google/mlkit/common/internal/zze;->access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->elapsedTimeTextView$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "<get-videoLayout>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinWidth(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$setIdleUi$$inlined$doOnLayout$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$setIdleUi$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoMaxDuration$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setIdleUi(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->mIdleState:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recordingOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->resetCounter()V

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->fixedWidth:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getVideoLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->fixedWidth:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinWidth(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoMaxDuration$delegate:Ljava/lang/Object;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->elapsedTimeTextView$delegate:Ljava/lang/Object;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->refreshUIAnimation$2()V

    return-void

    :cond_5
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$setIdleUi$$inlined$doOnLayout$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$setIdleUi$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    return-void
.end method

.method public final startCounter(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->updateCounterRunnable:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object v5

    const-string v0, "<get-lengthTextView>(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->elapsedTimeTextView$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const-string v0, "<get-elapsedTimeTextView>(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->timelapseGroup$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    const-string v0, "<get-timelapseGroup>(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->timelapseFormatStr$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;Lcom/motorola/camera/capturedmediadata/RecordingTime;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V

    iput-object v2, v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->updateCounterRunnable:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object p0

    iget-object p1, v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->updateCounterRunnable:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->mControlBarDetailListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->mApplyPreviewDoneListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isIndicationWakeUpEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v5}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v6, v4, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_BAR_DETAIL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v6, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recorderTimingTask:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->addAllTask()V

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->recordingOrientation:I

    return-void

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isPaused:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isControlPanelShown:Z

    if-nez p1, :cond_17

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPausingForKnifeSwitch(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;-><init>(ZLcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iput-boolean v6, v7, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->isReady:Z

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v8, v7, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->isReady:Z

    return-void

    :cond_a
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v0, 0xb

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iput-boolean v6, v7, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->isReady:Z

    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isPaused:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput-boolean v8, v7, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->isReady:Z

    return-void

    :cond_10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_11
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPausingForKnifeSwitch(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_12
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_13
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isIndicationWakeUpEnable:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v5}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_15
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_17

    iput-boolean v8, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->isIndicationWakeUpEnable:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_16
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v8, v4, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_BAR_DETAIL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v8, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoTimerCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_17
    return-void

    :cond_18
    :goto_0
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopCounter()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getLengthTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->updateCounterRunnable:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
