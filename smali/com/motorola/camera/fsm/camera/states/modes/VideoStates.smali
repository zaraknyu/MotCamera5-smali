.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;
.super Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;
.source "SourceFile"


# static fields
.field public static final CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CLOSE_WAIT_PLAY_TONE:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_GALLERY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMER_PAUSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMER_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_TIMER_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->VIDEO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->IDLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PREPARE_CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_TONE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PAUSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PAUSED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESUMING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SNAPSHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v6}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/StateKey$Key;->COPY_PREVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v6, v7}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v6, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v6, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->STOPPING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW_RESULT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->EXIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TIMELAPSE_PROCESSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TIMELAPSE_PROCESSING_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SUPER_SLOW_MOTION_PROCESSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_TIMER:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v3, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_PAUSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v3, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v3, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TUTORIAL_VIDEO_DV:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->DV_TIMER:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PREPARE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PAUSING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_PAUSED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_RESUME:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_RECORDING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CODEC_VIDEO_STOP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CLOSE_WAIT_PLAY_TONE:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->GALLERY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_GALLERY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static configureCaptureStates(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 83

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v6, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v7, 0x1

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v9, "ENABLE_VSTAB_STOP_DETECTION"

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v6, 0x0

    const-string v7, "VIDEO_START_FAILURE"

    invoke-direct {v4, v8, v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v11, 0x12

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v11, 0x16

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0x15

    invoke-direct {v11, v12, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "HISTORY_STATE"

    invoke-direct {v11, v15, v5, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    move-object/from16 v17, v3

    const/16 v3, 0x13

    invoke-direct {v14, v3}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v14, 0x4

    move-object/from16 v18, v11

    const/16 v11, 0x8

    invoke-direct {v3, v14, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v3, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v11, v8, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIGH_THERMAL_LEVEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v11, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v19, v4

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v4, v8, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v13, 0x18

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CODEC_LOW:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    const/4 v13, 0x1

    invoke-static {v8, v7, v13, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MIC_OCCUPIED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-static {v8, v7, v13, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CURRENT_MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-static {v8, v7, v13, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    move-object/from16 v20, v7

    const/16 v7, 0x9

    invoke-direct {v14, v7}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    move-object/from16 v21, v6

    const/16 v6, 0xc

    invoke-direct {v14, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v22, v5

    const/16 v5, 0x9

    invoke-direct {v6, v5, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v12, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v5, 0x7

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v23, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v24, v15

    const-string v15, "RECORDING_ERROR"

    move-object/from16 v25, v9

    const/4 v9, 0x1

    invoke-direct {v5, v8, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v5, v13}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v12, 0xc

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v12, 0x9

    invoke-direct {v9, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v9, 0x9

    invoke-direct {v5, v9}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v12, 0xe

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v12, "VIDEO_RESTART"

    move-object/from16 v26, v13

    const/4 v13, 0x1

    invoke-direct {v9, v8, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v13, 0xc

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v13, 0x18

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x1

    invoke-direct {v3, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TONE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v27, v9

    const/16 v9, 0x15

    invoke-direct {v10, v9, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    move-object/from16 v28, v14

    const/16 v14, 0x9

    invoke-direct {v13, v14}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v14, 0x15

    move-object/from16 v29, v4

    const/4 v4, 0x0

    invoke-direct {v13, v14, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v14, 0xe

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v14, 0xc

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v14, 0x18

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CLOSE_WAIT_PLAY_TONE:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;->setForceDelay()V

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v10, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v30, v13

    const-string v13, "EXIT_ON_STOP"

    move-object/from16 v31, v3

    const/4 v3, 0x1

    invoke-direct {v14, v8, v13, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0xc

    invoke-direct {v14, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v10, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v10}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v14, "CLOSE_ON_STOP"

    move-object/from16 v34, v4

    move-object/from16 v33, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v10, v8, v14, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v10, 0xc

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v35, v4

    const/4 v4, 0x1

    invoke-direct {v10, v8, v14, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    move-object/from16 v36, v13

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v5, v8, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_CAPTURE_VIDEO_REQUESTS:Ljava/util/List;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v9, 0x17

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v37, v9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v38, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    move-object/from16 v39, v4

    const/16 v4, 0xc

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STARTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v5, v29

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v10, 0x9

    invoke-direct {v9, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    move-object/from16 v29, v6

    const/16 v6, 0xe

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v6, v8, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v10, 0xc

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v10, 0x18

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v9, 0xf

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "VIDEO_RECORDING"

    const/4 v10, 0x1

    invoke-direct {v6, v8, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v40, v9

    const/4 v9, 0x6

    invoke-direct {v6, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_AUTO_FPS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    move-object/from16 v41, v10

    const-string v10, "VIDEO_AUTO_FPS"

    move-object/from16 v42, v15

    const/4 v15, 0x1

    invoke-direct {v9, v8, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v10, 0x7

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_REACH_MAX_DURATION:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v6, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v15, v25

    move-object/from16 v25, v6

    move-object v6, v15

    const/4 v15, 0x1

    invoke-direct {v10, v8, v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0x1a

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v11, v36

    const/4 v15, 0x1

    invoke-direct {v10, v8, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v10, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v15, 0x11

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v15, 0x4

    invoke-direct {v10, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v10, v8, v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_GESTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v36, v10

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v43, v15

    const/4 v15, 0x2

    invoke-direct {v10, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_GESTURE_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_PAUSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v44, v15

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v45, v10

    const/4 v10, 0x2

    invoke-direct {v15, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DV_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    const/4 v15, 0x1

    invoke-static {v8, v6, v15, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v46, v10

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    move-object/from16 v47, v9

    const/16 v9, 0x11

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v10, 0x4

    invoke-direct {v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    move-object/from16 v48, v15

    const/16 v15, 0x11

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v15, 0x4

    invoke-direct {v10, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v15, 0x5

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    const/4 v10, 0x1

    invoke-static {v8, v6, v10, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v49, v9

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v50, v15

    const/16 v15, 0x19

    invoke-direct {v9, v15, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x0

    invoke-direct {v15, v8, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v15, "FINISH_APP"

    move-object/from16 v51, v11

    const/4 v11, 0x1

    invoke-direct {v10, v8, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v11, 0x2

    invoke-direct {v10, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    move-object/from16 v9, v35

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v35, v15

    const/4 v15, 0x1

    invoke-direct {v11, v8, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v11, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    move-object/from16 v52, v10

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-object/from16 v53, v13

    const/4 v13, 0x1

    invoke-direct {v15, v10, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    move-object/from16 v54, v10

    const/16 v10, 0x1b

    invoke-direct {v15, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    move-object/from16 v55, v10

    const/16 v10, 0x1a

    invoke-direct {v15, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v56, v15

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    move-object/from16 v57, v10

    const/4 v10, 0x1

    invoke-direct {v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    const/4 v15, 0x1

    invoke-static {v8, v6, v15, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP_CLI_DISPLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    move-object/from16 v58, v10

    const/4 v10, 0x2

    invoke-direct {v15, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    const/4 v15, 0x1

    invoke-static {v8, v6, v15, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v15, 0x9

    invoke-direct {v10, v15}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    move-object/from16 v59, v6

    const/16 v6, 0xe

    invoke-direct {v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v6, v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v15, 0xf

    invoke-direct {v10, v15}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v15, 0x9

    move-object/from16 v60, v5

    move-object/from16 v5, v28

    invoke-direct {v10, v15, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0x1c

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const-string v15, "SURFACE"

    move-object/from16 v28, v6

    const/4 v6, 0x0

    invoke-direct {v10, v8, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v15, 0x17

    move-object/from16 v61, v4

    const/4 v4, 0x1

    invoke-direct {v10, v15, v4}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    move-object/from16 v62, v10

    const/16 v10, 0x19

    invoke-direct {v15, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v63, v4

    const/4 v4, 0x0

    move-object/from16 v64, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v64

    move-object/from16 v64, v13

    move-object/from16 v13, v24

    invoke-direct {v10, v13, v6, v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v4, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v13, 0xf

    invoke-direct {v15, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v15, 0x10

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v13, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;

    const/4 v15, 0x5

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;-><init>(I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v65, v9

    const/16 v9, 0x9

    invoke-direct {v13, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v13, 0x8

    move-object/from16 v66, v5

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v9, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "KNIFE_SWITCH_AFTER_PAUSING"

    move-object/from16 v67, v12

    const/4 v12, 0x1

    invoke-direct {v9, v8, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x0

    invoke-direct {v9, v8, v6, v12, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v9, 0xf

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0x9

    invoke-direct {v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0x8

    invoke-direct {v9, v10, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-direct {v9, v8, v6, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v10, 0xc

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v12, "OPEN_CAMERA_ERROR"

    move-object/from16 v68, v6

    const/4 v6, 0x1

    invoke-direct {v10, v8, v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v6, v39

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v39, v5

    const/4 v5, 0x1

    invoke-direct {v10, v8, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v10, 0xb

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static/range {v61 .. v61}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v5, p1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    move-object/from16 v69, v15

    const/16 v15, 0xb

    move-object/from16 v70, v4

    const/4 v4, 0x0

    invoke-direct {v10, v15, v4}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move/from16 v32, v4

    const/4 v4, 0x6

    invoke-direct {v10, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v32 .. v32}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v31

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v31, v15

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v72, v7

    move-object/from16 v71, v13

    move-object/from16 v7, v51

    const/4 v13, 0x1

    move-object/from16 v51, v11

    move/from16 v11, v32

    invoke-direct {v15, v8, v7, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v73, v7

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v7, v8, v12, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v11, 0xd

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v8, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v13, 0xc

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v74, v15

    const/4 v15, 0x0

    invoke-direct {v13, v8, v14, v15, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v15, 0x17

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v13, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v15, v42

    move-object/from16 v42, v12

    const/4 v12, 0x0

    invoke-direct {v13, v8, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v75, v7

    const/4 v7, 0x0

    invoke-direct {v13, v8, v14, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v13, 0x18

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v7, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v26

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    move-object/from16 v26, v11

    const/16 v11, 0xc

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    filled-new-array/range {v66 .. v66}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v12

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v13, 0xc

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v12, v67

    const/4 v13, 0x1

    move-object/from16 v67, v3

    const/4 v3, 0x0

    invoke-direct {v11, v8, v12, v13, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    move-object/from16 v11, v21

    invoke-static {v1, v4, v9, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v2

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v2, v8, v14, v3, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v5, 0x19

    invoke-direct {v2, v5, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v3, 0x16

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v13, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x0

    invoke-direct {v3, v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v3, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_DATA_CLEAR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v13, 0x1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v76, v11

    const-string v11, "EVENT_TRIGGER"

    invoke-direct {v3, v0, v11, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v8, v14, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x19

    invoke-direct {v5, v11, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x16

    invoke-direct {v5, v11, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v5, v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v5, v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v8, v14, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x19

    move-object/from16 v77, v4

    const/4 v4, 0x1

    invoke-direct {v11, v13, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v4, v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v8, v14, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v11, v8, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v11, 0xb

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    move-object/from16 v4, v29

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v13, 0xc

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v13, 0x9

    move-object/from16 v29, v10

    move-object/from16 v10, v66

    invoke-direct {v11, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {v5, v8, v12, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    move-object/from16 v5, v76

    invoke-static {v1, v2, v4, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v66, v9

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v9, v8, v14, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x16

    move-object/from16 v76, v10

    const/4 v10, 0x1

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v11, v8, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v8, v14, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x16

    invoke-direct {v10, v11, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v10, v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v30

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v8, v14, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    move-object/from16 v10, v65

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v30, v15

    const/4 v15, 0x1

    invoke-direct {v13, v8, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    move-object/from16 v65, v4

    move-object/from16 v4, v53

    invoke-direct {v13, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_PREVIEW_REQUESTS:Ljava/util/List;

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>()V

    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v13

    move-object/from16 v15, v38

    invoke-virtual {v13, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v38, v9

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v53, v12

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v78, v9

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    move-object/from16 v79, v7

    const/16 v7, 0x13

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x3

    move-object/from16 v80, v3

    const/16 v3, 0x8

    invoke-direct {v7, v9, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v3, v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v13, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v13}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v34

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    move-object/from16 v34, v15

    const/16 v15, 0xc

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v13, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v12, v37

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v37, v7

    const/4 v7, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v8, v14, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x16

    invoke-direct {v7, v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    move-object/from16 v7, v21

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0xc

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v15, 0xb

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v21, v12

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v8, v14, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v13, v8, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v13, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v13, 0x18

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "OPEN_AFTER_CLOSE"

    const/4 v15, 0x1

    invoke-direct {v12, v0, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v12, v67

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    move-object/from16 v26, v5

    const/16 v5, 0xc

    invoke-direct {v15, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v5, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v13, v80

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ACTIVITY_LAUNCHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_LAUNCHED:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v67, v0

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    move-object/from16 v80, v14

    const/16 v14, 0xc

    invoke-direct {v0, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v14, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v14, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PHOTOS_STABILIZE_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0xc

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v14, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v14, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SLOW_MOTION_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v1, v72

    invoke-static {v2, v0, v1, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0xb

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v15, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    move-object/from16 v72, v5

    const/4 v5, 0x0

    invoke-direct {v14, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VSTAB_STOP_DETECTION_ON:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VSTAB_STOP_DETECTION_OFF:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v3, v51

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;

    const/4 v15, 0x1

    invoke-direct {v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;-><init>(Z)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PAUSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v14, v79

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v75, v71

    move-object/from16 v71, v13

    move-object/from16 v13, v75

    move-object/from16 v75, v9

    const/4 v9, 0x0

    invoke-direct {v3, v8, v13, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v9, 0x1

    invoke-direct {v3, v8, v13, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v5, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v15, 0x18

    move-object/from16 v79, v7

    const/4 v7, 0x0

    invoke-direct {v9, v15, v7}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v15, v80

    move-object/from16 v80, v13

    move-object v13, v15

    const/4 v15, 0x1

    invoke-direct {v9, v8, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v15, 0xb

    invoke-direct {v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v9, 0xf

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>()V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v7, v70

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v15, 0xf

    invoke-direct {v9, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v7, 0x9

    move-object/from16 v81, v14

    move-object/from16 v14, v69

    invoke-direct {v15, v7, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v15, 0x8

    move-object/from16 v14, v39

    invoke-direct {v7, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x0

    move-object/from16 v82, v12

    move-object/from16 v12, v68

    invoke-direct {v7, v8, v12, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v7, v47

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v50

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v14, v48

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v15, v49

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v9, 0x5

    invoke-direct {v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v22

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v9, 0x17

    const/4 v7, 0x1

    invoke-direct {v15, v9, v7}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v7, v52

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v15, v45

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v48, v7

    const/4 v7, 0x2

    invoke-direct {v15, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v68, v10

    const/4 v10, 0x1

    invoke-direct {v15, v8, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v10, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v10, v8, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v15, 0xb

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v10, 0x1

    move-object/from16 v15, v54

    invoke-direct {v7, v15, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    move-object/from16 v7, v64

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v15, 0x1b

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v55

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v57

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v15, v56

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    move-object/from16 v54, v4

    const/4 v4, 0x1

    invoke-direct {v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v58

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v15, 0x2

    invoke-direct {v4, v15}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v60

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v4, 0x9

    invoke-direct {v15, v4}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    move-object/from16 v55, v14

    const/16 v14, 0xe

    invoke-direct {v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v7, v53

    const/4 v15, 0x1

    invoke-direct {v14, v8, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v28

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v14, 0xf

    invoke-direct {v7, v14}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v14, 0x9

    move-object/from16 v15, v76

    invoke-direct {v7, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v14, 0x1c

    invoke-direct {v7, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v7, v63

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v62

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    move-object/from16 v28, v15

    const/16 v15, 0x19

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v53, v4

    const/4 v4, 0x0

    move-object/from16 v7, v24

    invoke-direct {v14, v7, v12, v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;-><init>(Z)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_RESUMED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v14, v61

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v24, v12

    const-string v12, "KNIFE_SWITCH_BEFORE_RESUMING"

    move-object/from16 v58, v9

    const/4 v9, 0x1

    invoke-direct {v15, v8, v12, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v9, 0x18

    const/4 v15, 0x1

    invoke-direct {v7, v9, v15}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v12, v82

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v7, v8, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v9, 0xb

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v9, "VIDEO_PAUSED"

    const/4 v15, 0x0

    invoke-direct {v7, v8, v9, v15, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v61, v4

    const/4 v4, 0x1

    invoke-direct {v10, v8, v9, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    move-object/from16 v4, v57

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    move-object/from16 v15, v34

    invoke-virtual {v4, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;-><init>()V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0xd

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v4, v8, v9, v15, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v4, v8, v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v4, v8, v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v4, v8, v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v3, v77

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_PLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v7, "REVIEW_PLAY"

    move-object/from16 v9, v67

    const/4 v15, 0x1

    invoke-direct {v6, v9, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v7, "SHOULD_EXIT"

    invoke-direct {v6, v9, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v10, "REVIEW_ACCEPT"

    invoke-direct {v6, v8, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v5, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v6, v8, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v6, v9, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    const/4 v15, 0x0

    invoke-static {v8, v10, v15, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v5, v55

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-static {v8, v10, v15, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v6, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v67, v12

    const/4 v12, 0x1

    invoke-direct {v15, v8, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v15, v9, v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v6, v68

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v34, v13

    const/4 v13, 0x1

    invoke-direct {v15, v8, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v55, v14

    move-object/from16 v14, v35

    invoke-direct {v15, v8, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    move-object/from16 v35, v1

    move-object/from16 v1, v54

    invoke-direct {v13, v1, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v12, v33

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-direct {v12, v8, v14, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v13, v8, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v13, v9, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v7, v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v38

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-direct {v7, v8, v14, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v9, v8, v10, v15, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    move-object/from16 v9, v26

    invoke-static {v0, v3, v4, v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v14, 0x15

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v8, v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v14, 0x16

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v13, v71

    invoke-static {v3, v4, v13}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v8, v10, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0x16

    invoke-direct {v10, v12, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v4, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v7, v62

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v12, v21

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v7, 0x7

    const/4 v15, 0x1

    invoke-direct {v3, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v12, 0xa

    invoke-direct {v4, v12, v15}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v3, v78

    invoke-static {v2, v0, v3, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v13, 0x0

    invoke-direct {v3, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v37

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v7, 0xa

    invoke-direct {v4, v7, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v17

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v12, 0x13

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v75

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v12, v1, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v3, v43

    invoke-static {v2, v0, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v10

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v14, 0x15

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v12, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v12, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v13, v35

    invoke-virtual {v12, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v1, v59

    const/4 v15, 0x1

    invoke-direct {v14, v8, v1, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;

    move-object/from16 v35, v6

    const/4 v6, 0x0

    invoke-direct {v14, v15, v6}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;-><init>(IZ)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v12, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v12}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x15

    const/4 v15, 0x0

    invoke-direct {v12, v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v6, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    move-object/from16 v12, v72

    invoke-virtual {v6, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v14, v55

    invoke-virtual {v6, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v55, v5

    const/4 v5, 0x2

    invoke-direct {v15, v8, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0x13

    invoke-direct {v5, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x15

    const/4 v15, 0x1

    invoke-direct {v6, v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;

    invoke-direct {v3, v15, v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;-><init>(IZ)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x15

    invoke-direct {v5, v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v1, 0x2

    invoke-direct {v15, v8, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v15, 0x13

    invoke-direct {v1, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    move-object/from16 v3, v44

    invoke-static {v2, v1, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v15, 0x15

    const/4 v3, 0x0

    invoke-direct {v13, v15, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v10, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v10, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v13, v51

    invoke-virtual {v10, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;

    invoke-direct {v15, v3, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;-><init>(IZ)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v10, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v10}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v15, 0x15

    invoke-direct {v13, v15, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v10, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v10, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v10, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    invoke-direct {v13, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v14, 0x13

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v10, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v10}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x15

    const/4 v15, 0x1

    invoke-direct {v10, v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;

    move-object/from16 v17, v10

    const/4 v10, 0x0

    invoke-direct {v14, v10, v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;-><init>(IZ)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x15

    invoke-direct {v10, v13, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v12, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v13, 0x13

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    move-object/from16 v3, v48

    invoke-static {v2, v1, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0x15

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v58

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0x15

    invoke-direct {v10, v12, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v12, 0x18

    invoke-direct {v10, v12, v15}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_AUTO_RECORD:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v15, 0x1

    invoke-direct {v10, v12, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TUTORIAL_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v12, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TUTORIAL_SKIP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v10, v46

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-direct {v12, v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v14, v81

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v15, 0x2

    const/4 v3, 0x0

    invoke-direct {v12, v15, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v18, v4

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v12, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v15, 0xa

    invoke-direct {v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v15, 0x8

    move-object/from16 v21, v6

    move-object/from16 v6, v39

    invoke-direct {v12, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v26, v5

    const/16 v5, 0x9

    invoke-direct {v12, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-static {v2, v0, v13, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v3, v47

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x2

    invoke-direct {v5, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v5, v7, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v7, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v7, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v7, 0xa

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v7, 0x8

    invoke-direct {v4, v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v7, 0x9

    invoke-direct {v4, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0xe

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v26

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v5, v50

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v21

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v10, v65

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v13, v30

    const/4 v15, 0x1

    invoke-direct {v12, v8, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v15, 0x1

    move-object/from16 v4, v59

    invoke-direct {v12, v8, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v12, v40

    const/4 v15, 0x1

    invoke-direct {v4, v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v9

    const/4 v9, 0x0

    move-object/from16 v14, v24

    invoke-direct {v4, v8, v14, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v9, 0x6

    move-object/from16 v15, v41

    invoke-direct {v4, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v4, 0xf

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v4, v36

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v43

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v4, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v15, v45

    invoke-virtual {v1, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v44

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v4, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v4, v52

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v17

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v15, v56

    invoke-virtual {v1, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v4, v70

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v15, 0xf

    invoke-direct {v5, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v3, 0x9

    move-object/from16 v68, v14

    move-object/from16 v14, v69

    invoke-direct {v15, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v15, 0x8

    invoke-direct {v3, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v6, v80

    const/4 v15, 0x1

    invoke-direct {v3, v8, v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v5, v34

    const/4 v15, 0x0

    invoke-direct {v3, v8, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    const/4 v15, 0x1

    invoke-static {v8, v13, v15, v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v3, v49

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v3, 0x5

    invoke-direct {v15, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v3, v20

    const/4 v15, 0x1

    invoke-static {v8, v3, v15, v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v3, v55

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v15, v35

    invoke-virtual {v1, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v4, 0x1

    invoke-direct {v14, v8, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    move-object/from16 v13, v54

    invoke-direct {v4, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v3, v67

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v14, 0xc

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v3, v42

    const/4 v14, 0x1

    invoke-direct {v4, v8, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v4, v22

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v4, 0x17

    move-object/from16 v71, v6

    const/4 v6, 0x1

    invoke-direct {v14, v4, v6}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v4, v25

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v6, 0x1a

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v6, 0xb

    const/4 v14, 0x0

    invoke-direct {v4, v6, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v6, 0x1

    invoke-direct {v4, v8, v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v6, 0x6

    move-object/from16 v12, v31

    invoke-direct {v4, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v4, v66

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v14, v81

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-direct {v12, v8, v5, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v12, 0xd

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v12, 0x15

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v6, v21

    invoke-static {v0, v1, v4, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v8, v5, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v29

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v14, v8, v5, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v14, v74

    invoke-static {v0, v1, v4, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v4, v8, v3, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v11, 0xd

    invoke-direct {v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v8, v5, v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    move-object/from16 v11, v73

    invoke-static {v8, v11, v4, v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-static {v1, v10, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>(Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v11, 0x1

    invoke-direct {v4, v8, v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v4, v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v79

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v9, v71

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-direct {v6, v8, v9, v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v7, 0x1

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    move-object/from16 v14, v81

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v17

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v6, v30

    const/4 v10, 0x1

    invoke-static {v8, v6, v10, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v12, v67

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v8, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v9, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v6, 0xf

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v6, v70

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v9, 0xf

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0x9

    move-object/from16 v11, v69

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0x8

    move-object/from16 v11, v39

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v79, v14

    move-object/from16 v14, v68

    invoke-direct {v9, v8, v14, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v6, v47

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v50

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v6, v56

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v14, v55

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v49

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v10, 0x5

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v22

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v10, 0x17

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v52

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v10, 0x18

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    move-object/from16 v9, v18

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v45

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v48

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v11, 0x2

    invoke-direct {v10, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v11, v8, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v8, 0x2

    invoke-direct {v5, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v5, v60

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v6, 0xe

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v5, v53

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v6, 0x9

    move-object/from16 v15, v28

    invoke-direct {v5, v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-static {v2, v0, v9, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v61

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v26

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_GALLERY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v14, v79

    invoke-static {v1, v4, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v6, 0x9

    invoke-direct {v5, v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v6, 0x1

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v8, "START_GALLERY_RELEASE_RESOURCE"

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v4, v7, v8, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public static getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v3, 0x0

    const/16 v4, 0x17

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v2, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object v1
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getParentState()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->configureCaptureStates(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->VIDEO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method

.method public final getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 18

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSettingsLockRunnableList(Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;-><init>(IZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v6, 0xf

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_DATA_CLEAR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Z)V

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {v6, v8, v7}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    const/16 v9, 0x9

    invoke-direct {v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v10, 0x0

    const/16 v11, 0xd

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v10, 0x1b

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v9, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/16 v12, 0x9

    invoke-direct {v9, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(II)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v9, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x1b

    invoke-direct {v7, v9, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v12, 0x9

    invoke-direct {v9, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v9, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v7, 0x1b

    invoke-direct {v6, v7, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v13, "HISTORY_STATE"

    invoke-direct {v6, v12, v13, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v7, 0x1b

    invoke-direct {v6, v7, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x2

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v6, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v10, 0x13

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;-><init>(Z)V

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v14, 0x0

    invoke-direct {v10, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Z)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v15, 0x2

    invoke-direct {v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    iget-object v14, v1, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v12, v13, v15, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v15, 0x1

    const/4 v11, 0x3

    invoke-direct {v10, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(II)V

    iput-object v10, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v10, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v10, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    iput-object v4, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(Z)V

    iput-object v10, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v10, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v10, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v10, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v10, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v16, v0

    const/4 v0, 0x2

    move-object/from16 v17, v14

    const/16 v14, 0x9

    invoke-direct {v15, v0, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v15, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    invoke-direct {v0, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v0, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v10, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v3, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v3, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v10, 0x3

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    iput-object v7, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v7, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v7, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v7, 0x5

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x2

    invoke-direct {v3, v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP_CLI_DISPLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v4, 0x2

    invoke-direct {v3, v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DV_POSTURE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v11, 0x1

    invoke-direct {v7, v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v7, v14, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v7, v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v7, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v10, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_AUTO_RECORD:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v11, 0x1

    invoke-direct {v4, v7, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v7, 0x2

    invoke-direct {v4, v7, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/16 v10, 0x9

    invoke-direct {v4, v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v11, 0x8

    invoke-direct {v4, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_GALLERY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    const/4 v10, 0x1

    invoke-direct {v4, v10}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v11, "START_GALLERY_RELEASE_RESOURCE"

    const/4 v14, 0x1

    invoke-direct {v4, v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x0

    invoke-direct {v4, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0x9

    invoke-direct {v4, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v4, 0x17

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v6, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_ORIENTATION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v4, 0x0

    const/16 v6, 0x19

    invoke-direct {v3, v6, v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(IZ)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v12, v13, v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BEAUTY_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->SLIDER_BAR_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v5, 0x8

    invoke-direct {v3, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v4, 0x2

    invoke-direct {v3, v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    return-object v0
.end method

.method public final getParentState()Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 7

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v4, 0xb

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ClearVideoBundleRunnable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v4, 0x2

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v3, v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_GL_FIRST_DRAW_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v3, "LOADING_FIRST_FRAME_COMPLETE"

    invoke-direct {v2, v6, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    return-object p0
.end method

.method public final getParentStateKey()Lcom/motorola/camera/fsm/camera/StateKey;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method
