.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final PANORAMA_CAPTURE_STATES:Landroid/util/ArraySet;

.field public static final PANORAMA_CAPTURE_STOP_STATES:Landroid/util/ArraySet;

.field public static final SHOW_ON_EXIT_STATES:Landroid/util/ArraySet;

.field public static final TAG:Ljava/lang/String;

.field public static final VIDEO_PAUSED_STATES:Landroid/util/ArraySet;

.field public static final VIDEO_RECORDING_STATES:Landroid/util/ArraySet;

.field public static final VIDEO_STOP_STATES:Landroid/util/ArraySet;


# instance fields
.field public cancelAnimationsOnIdle:Z

.field public final gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

.field public imageQueueListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;

.field public imageSaveListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageSaveListener;

.field public isFsmIdle:Z

.field public isSplitMode:Z

.field public final mShutterPendingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

.field public final mShutterProcessingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

.field public final mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

.field public final memoryListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

.field public final shutterTouchHandler$delegate:Lkotlin/SynchronizedLazyImpl;

.field public shutterUI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

.field public final superSlowMotionMaxDuration$delegate:Ljava/lang/Object;

.field public superSlowMotionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v40, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v40 .. v40}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->SHOW_ON_EXIT_STATES:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_PAUSED_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_RECORDING_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_STOP_STATES:Landroid/util/ArraySet;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->PANORAMA_CAPTURE_STATES:Landroid/util/ArraySet;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v8}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v8}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->PANORAMA_CAPTURE_STOP_STATES:Landroid/util/ArraySet;

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v9}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v9}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object v0, v8

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v23, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v24, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v25, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v26, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v27, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v28, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v29, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v30, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v31, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v32, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v33, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_PAUSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v34, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v35, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v36, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v37, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v38, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v39, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v7 .. v40}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    const-string v0, "CaptureBarShutterComponent"

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterTouchHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->superSlowMotionMaxDuration$delegate:Ljava/lang/Object;

    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Ljava/lang/Object;

    const/16 v0, 0xa

    iput v0, p2, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    iput-object p2, p1, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;

    invoke-direct {p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;-><init>()V

    iput-object p2, p1, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->memoryListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterProcessingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterPendingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    return-void
.end method

.method public static final access$updateShutterEnabledState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static getShutterProcessingState$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x31

    if-eq p0, v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_AI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneFeatureEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorTone()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneShotLimit()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_PROCESSING_AI_PERSONAL_STYLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_2
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_3
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0
.end method

.method public static getShutterRecordingState(IZ)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 p1, 0xd

    if-eq p0, p1, :cond_0

    const/16 p1, 0x22

    if-eq p0, p1, :cond_4

    const/16 p1, 0x24

    if-eq p0, p1, :cond_4

    const/16 p1, 0x26

    if-eq p0, p1, :cond_4

    const/16 p1, 0x34

    if-eq p0, p1, :cond_4

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_TIMELAPSE_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_SLOW_MOTION_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_3
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_4
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0
.end method

.method public static synthetic getShutterRecordingState$default()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterRecordingState(IZ)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    return-object v0
.end method

.method public static getShutterState(IZ)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_1

    const/16 p1, 0x22

    if-eq p0, p1, :cond_5

    const/16 p1, 0x24

    if-eq p0, p1, :cond_5

    const/16 p1, 0x26

    if-eq p0, p1, :cond_5

    const/16 p1, 0x34

    if-eq p0, p1, :cond_5

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_AI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION_SLOW:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_2
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_3
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_TIMELAPSE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_4
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0

    :cond_5
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0
.end method

.method public static synthetic getShutterState$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState(IZ)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getRotatedViews()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterTouchHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    return-object p0
.end method

.method public final getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterUI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "shutterUI"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final init$1()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    const-string v2, "mParentView"

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const-string v2, "getLayoutManager(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->shutterUI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->reset()V

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

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isSplitMode:Z

    return-void
.end method

.method public final registerCaptureListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageQueueListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageQueueListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageSaveListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageSaveListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageSaveListener;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageSaveListener;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageSaveListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageSaveListener;

    :cond_1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_BLOCKED_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0, v0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    new-instance v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    sget v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->ALPHA_ENABLED:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->enableClicks(Z)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 21

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_1
    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isSplitMode:Z

    goto/16 :goto_12

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0xd

    const/4 v6, 0x3

    const/16 v7, 0x23

    const/4 v9, 0x1

    if-eqz v3, :cond_8

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    iget-boolean v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isSplitMode:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v2, 0x17

    invoke-direct {v0, v4, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result v2

    if-nez v2, :cond_6

    if-ne v0, v7, :cond_7

    :cond_6
    move v1, v9

    :cond_7
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;

    invoke-direct {v0, v4, v1, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZI)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_8
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x2

    if-nez v10, :cond_6c

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_11

    :cond_9
    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const/16 v10, 0x18

    if-eqz v3, :cond_a

    iget-object v3, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v3, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->NV_FRAME_COLLECTED_FINISHED:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterProcessingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_PENDING:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterPendingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto/16 :goto_12

    :cond_a
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x0

    if-nez v3, :cond_6b

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isUltraResWithSwHwSensorCapture(Lcom/google/zxing/Result;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_10

    :cond_b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_c
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x5

    const-wide/16 v5, 0x0

    if-eqz v13, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActivePhotoShotInterval:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_d

    goto/16 :goto_12

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorTone()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneShotLimit()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v0}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->hasProcessingCapture()Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_e
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v14}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIModes(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_13

    :cond_f
    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "CLOSED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "LONG_PRESS"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "PRELOCK_FOCUS_EXIT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isNonMcfShotInQcfaMode(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "SHUTTER_PLAYED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_NV_SLOW_CAPTURE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_11
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, v12}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v0, v12}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto/16 :goto_12

    :cond_12
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6a

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    goto/16 :goto_f

    :cond_13
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v13

    move/from16 v16, v7

    const/16 v7, 0xb

    const-wide/32 v17, 0x1d4c0

    if-eqz v13, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeed()J

    move-result-wide v2

    cmp-long v0, v2, v17

    if-gtz v0, :cond_14

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CAPTURE_FINISH"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v9

    :cond_15
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "ANALYTICS_LONG_EXPOSURE_STOP_TYPE"

    invoke-virtual {v0, v2, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_12

    :cond_16
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v13

    const/16 v15, 0xc

    if-eqz v13, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeed()J

    move-result-wide v2

    cmp-long v0, v2, v17

    if-gez v0, :cond_6d

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CAPTURE_FINISH"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_17
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "TIMER"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "TIMER_CANCEL_UI"

    invoke-virtual {v0, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;

    invoke-direct {v5, v4, v3, v0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isVoiceAssistantSwitch(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_18
    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "TIMER"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_19

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v1, v4, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_19
    const-string v1, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_1a
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v13

    const/16 v12, 0xa

    if-eqz v13, :cond_2f

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v3

    if-nez v3, :cond_6e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string v3, "CANCELLED"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_13

    :cond_1b
    const-string v3, "TIMER"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1c

    move v3, v9

    goto :goto_0

    :cond_1c
    move v3, v1

    :goto_0
    iget-object v10, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v11

    if-nez v11, :cond_2e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v11

    if-eqz v11, :cond_1d

    goto/16 :goto_5

    :cond_1d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result v11

    if-eqz v11, :cond_1f

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActivePhotoShotInterval:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1e

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;

    invoke-direct {v0, v3, v4, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_1e
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/4 v15, 0x3

    invoke-direct {v0, v4, v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    if-nez v5, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorTone()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneShotLimit()Z

    move-result v5

    if-eqz v5, :cond_21

    if-eqz v3, :cond_20

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v14}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_20
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/4 v1, 0x6

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_21
    if-eqz v10, :cond_23

    if-eqz v3, :cond_22

    iput-boolean v9, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->cancelAnimationsOnIdle:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/4 v1, 0x7

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_22
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x8

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v1, "PERFECT_ME_STATE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda22;

    invoke-direct {v1, v0, v4, v8, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda22;-><init>(ILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/google/zxing/Result;Z)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz v3, :cond_25

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x9

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_25
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_26
    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionMcfSupported()Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_27
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "QCFA_SHOT"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v9

    goto :goto_1

    :cond_28
    move v0, v1

    :goto_1
    if-eqz v3, :cond_2d

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrBurstEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mShutterBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v2

    if-nez v3, :cond_2c

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    monitor-enter v2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v10, v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mStartLastShutterTime:J

    sub-long/2addr v5, v10

    iget-wide v10, v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v3, v5, v10

    if-gez v3, :cond_29

    move v1, v9

    :cond_29
    monitor-exit v2

    if-eqz v1, :cond_2a

    goto :goto_3

    :cond_2a
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    monitor-enter v1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mStartLastShutterTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_2b
    :goto_2
    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsCanCapture:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v1

    if-eqz v0, :cond_2c

    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->isTimerCapture(Lcom/google/zxing/Result;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_4

    :cond_2c
    :goto_3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_2d
    :goto_4
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->stateChanged(Lcom/google/zxing/Result;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_2e
    :goto_5
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;

    invoke-direct {v0, v4, v10, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZI)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_2f
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v2, "CAPTURE_TRIGGER"

    const-class v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    goto :goto_6

    :cond_30
    const/4 v12, 0x0

    :goto_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v12, v0, :cond_31

    move v1, v9

    :cond_31
    xor-int/lit8 v0, v1, 0x1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;

    invoke-direct {v1, v4, v0, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZI)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_32
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v13

    const/16 v14, 0xe

    if-eqz v13, :cond_33

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v14}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_33
    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v13

    move-wide/from16 v19, v5

    const/16 v5, 0x10

    const/16 v6, 0xf

    if-eqz v13, :cond_35

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isVoiceAssistantSwitch(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_34
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_35
    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    aget-wide v1, v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->onCaptureEstimate(J)V

    goto/16 :goto_12

    :cond_36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIForNightVisionMode()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getFastCaptureTimeForNVMode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->onCaptureEstimate(J)V

    goto/16 :goto_12

    :cond_37
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x11

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNonSingleSessionRemosaicEstimate:J

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->onCaptureEstimate(J)V

    goto/16 :goto_12

    :cond_38
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x12

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_39
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_6d

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "DETERMINATE_FG_PROCESSING_TIME"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_12

    :cond_3a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x13

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_3b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x14

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_3c
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto/16 :goto_12

    :cond_3d
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x15

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_3e
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;

    invoke-direct {v0, v4, v8, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/google/zxing/Result;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_3f
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    const/16 v13, 0x16

    if-eqz v3, :cond_41

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/TimedValueQueue;->setState(I)V

    :cond_40
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_41
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_PAUSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/TimedValueQueue;->setState(I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_42
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/TimedValueQueue;->setState(I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_43
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/TimedValueQueue;->setState(I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_44
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6d

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_45
    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "OPEN_GALLERY_CANCEL"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_46
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->SHOW_ON_EXIT_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4a

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_7

    :cond_47
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_48
    :goto_7
    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v1, "SHOULD_EXIT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_49
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    invoke-direct {v0, v4, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_4a
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result v0

    iget-object v2, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->memoryListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->canSaveSingleShot(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)Z

    move-result v2

    if-eqz v0, :cond_4c

    if-nez v2, :cond_4b

    goto :goto_8

    :cond_4b
    move v6, v1

    goto :goto_9

    :cond_4c
    :goto_8
    move v6, v9

    :goto_9
    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0, v9}, Lcom/motorola/camera/saving/ImageCaptureManager;->canDoNextCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v5

    iget-object v2, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoEnabledModes()Z

    move-result v3

    if-eqz v3, :cond_4d

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v2

    const-string v3, "getCurrentCaptureVideoData(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.record.VideoCaptureRecord"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGesturePauseTime:Ljava/util/ArrayList;

    const-string v7, "mGesturePauseTime"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-wide v2, v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGestureStopTime:J

    cmp-long v2, v2, v19

    if-lez v2, :cond_4d

    goto :goto_a

    :cond_4d
    move v2, v1

    goto :goto_b

    :cond_4e
    :goto_a
    move v2, v9

    :goto_b
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getHasFixedDurationAnimate()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneShotLimit()Z

    move-result v7

    if-eqz v7, :cond_4f

    sget-object v7, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    sget-object v7, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v7}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->hasProcessingCapture()Z

    move-result v7

    if-eqz v7, :cond_4f

    move v7, v2

    move v2, v3

    move v3, v9

    goto :goto_c

    :cond_4f
    move v7, v2

    move v2, v3

    move v3, v1

    :goto_c
    iget-boolean v10, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->cancelAnimationsOnIdle:Z

    if-nez v6, :cond_50

    if-nez v5, :cond_50

    if-eqz v2, :cond_52

    :cond_50
    if-nez v7, :cond_52

    if-eqz v3, :cond_51

    goto :goto_d

    :cond_51
    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->unregisterCaptureListeners(Z)V

    iput-boolean v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->cancelAnimationsOnIdle:Z

    goto :goto_e

    :cond_52
    :goto_d
    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->registerCaptureListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_e
    iput-boolean v9, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/TimedValueQueue;->setState(I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;

    move v1, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;-><init>(ZZZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZZZ)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_53
    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_54

    iput-boolean v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    goto/16 :goto_12

    :cond_54
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x19

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_55
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_RECORDING_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_56

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;

    invoke-direct {v0, v8, v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;-><init>(Lcom/google/zxing/Result;Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_56
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/TimedValueQueue;->setState(I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;

    invoke-direct {v0, v4, v8, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/google/zxing/Result;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_57
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_PAUSED_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/TimedValueQueue;->setState(I)V

    goto/16 :goto_12

    :cond_58
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->VIDEO_STOP_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_59

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;

    const/4 v15, 0x3

    invoke-direct {v0, v4, v8, v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda37;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/google/zxing/Result;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_59
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->PANORAMA_CAPTURE_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5a

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x1a

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_5a
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->PANORAMA_CAPTURE_STOP_STATES:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5b

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x1b

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_5b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x1c

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_5c
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x1d

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_5d
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5e

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->unregisterCaptureListeners(Z)V

    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mcfStateListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->NV_FRAME_COLLECTED_FINISHED:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterProcessingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_PENDING:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->mShutterPendingListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto/16 :goto_12

    :cond_5e
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object v3, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v5, v6, v7}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-nez v3, :cond_60

    :cond_5f
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "PERMISSIONS_GRANTED"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    :cond_60
    iget-object v0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_61

    goto/16 :goto_13

    :cond_61
    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v4, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_62
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_63

    goto/16 :goto_13

    :cond_63
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v2, v4, v0, v1, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;JI)V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_64
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_65

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_65
    iget-object v0, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "QCFA_SHOT"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v3, v8, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    if-nez v3, :cond_66

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-eqz v3, :cond_66

    move v1, v9

    :cond_66
    if-nez v0, :cond_67

    if-eqz v1, :cond_6d

    :cond_67
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;

    invoke-direct {v0, v1, v4, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_68
    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_69
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v0

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    move-wide/from16 v1, v19

    iput-wide v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->firstDownTime:J

    iput-wide v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    goto :goto_12

    :cond_6a
    :goto_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getArcLongExposureShutterSpeed()J

    move-result-wide v2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;JI)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_6b
    :goto_10
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v0, v2}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    const/4 v15, 0x3

    invoke-direct {v0, v4, v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_6c
    :goto_11
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6d
    :goto_12
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v8, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_14

    :cond_6e
    :goto_13
    return-void

    :cond_6f
    :goto_14
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->stateChanged(Lcom/google/zxing/Result;)V

    return-void
.end method

.method public final unregisterCaptureListeners(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageQueueListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_BLOCKED_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageSaveListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageSaveListener;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageQueueListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->imageSaveListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageSaveListener;

    :cond_2
    return-void
.end method
