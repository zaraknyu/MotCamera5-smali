.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final PHOTO_MODES:Ljava/util/List;

.field public static final SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_ADJUST_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_STOP_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_REPROC_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_LP_START_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_REVIEW_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PRELOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_AE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_ZOOM:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_TIMER:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SAVING_COLLAGE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LP_CONTINUOUS_CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LP_CONTINUOUS_SINGLE_CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LP_CONTINUOUS_STOP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LP_START_PREVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_START_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LP_CREATE_FINAL_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_CODEC:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_STOP_REPEATING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_STOP_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_REPROC_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CREATE_REPROC_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_MCF:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE_FRAME_COLLECTED:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MCF_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_DOC:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ADJUSTMENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_ADJUST_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->REVIEW_RESULT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SAVING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->EXIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->GOTO_IDLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    filled-new-array/range {v1 .. v20}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->PHOTO_MODES:Ljava/util/List;

    return-void
.end method

.method public static getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_DOWN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v7, 0x1

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v9, "HISTORY_STATE"

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/motorola/camera/JsonConfig;->isSupportFastFrameScene()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;-><init>()V

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v8, v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    iput-boolean v1, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TOUCH_DOWN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v11, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v8, v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    iput-boolean v1, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;

    invoke-direct {v10, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;-><init>(I)V

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v8, v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    iput-boolean v1, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v11, 0x0

    const/16 v12, 0x9

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    iput-boolean v1, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v11, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v13, 0x9

    invoke-direct {v12, v7, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v12, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v13, v8, v9, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v13, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;

    const-string v13, "TIMER"

    invoke-direct {v12, v13, v2, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v2, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CanPrelockFocusRunnable;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v2, v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v2, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v6, v8, v9, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-direct {v6, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v10, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0x9

    const/4 v12, 0x2

    invoke-direct {v6, v12, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v8, v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v10, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v8, v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v14, 0x2

    invoke-direct {v10, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v10, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v5, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/16 v13, 0x50

    filled-new-array {v13}, [I

    move-result-object v13

    invoke-direct {v10, v7, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(II[I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v13, 0x1a

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v10, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v8, v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x1

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v10, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v5, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v13, 0x1a

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v10, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v8, v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x1

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v10, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v5, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v10, 0x3

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v13, 0x1a

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v6, v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v8, v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v6, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_TAKE_PICTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    iput-object v5, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v8, v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v6, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v13, 0x1

    invoke-direct {v6, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(II)V

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    invoke-direct {v13, v8, v9, v14, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v1, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v13, 0x1a

    invoke-direct {v1, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v6, 0x1

    invoke-direct {v5, v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v5, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP_CLI_DISPLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v5, 0x0

    invoke-direct {v2, v6, v5}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v5, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v10, 0x7

    invoke-direct {v6, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v10, 0x8

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0x9

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v6, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v6, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-direct {v6, v8, v9, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v6, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v10, 0x7

    invoke-direct {v6, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v10, 0x8

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0x9

    invoke-direct {v6, v12, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v6, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v6, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-direct {v6, v8, v9, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v6, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v6, 0xe

    const/4 v10, 0x0

    invoke-direct {v5, v6, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v6, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v10, 0x1a

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v5, 0xe

    invoke-direct {v4, v5, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v8, v9, v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v4, 0x2

    invoke-direct {v0, v15, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public static getMaxAllowedJobs(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;)I
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResScene()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "HIGH_RESOLUTION"

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQcfaHighResMaxConcurrentJobsBySceneMap:Ljava/util/Map;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    move-object v2, v3

    goto/16 :goto_2

    :cond_3
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v4

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_5

    div-float/2addr v5, v2

    :cond_5
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxConcurrentJobsBySceneAdvanced:Ljava/util/Map;

    if-nez v2, :cond_7

    :cond_6
    move-object v2, v3

    goto :goto_1

    :cond_7
    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced$$ExternalSyntheticLambda0;

    invoke-direct {v4, v5}, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v4

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_9

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxConcurrentJobsBySceneMap:Ljava/util/Map;

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v4

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxConcurrentJobsBySceneWithBeauty:Ljava/util/Map;

    if-nez v2, :cond_b

    :cond_a
    move-object v2, v3

    goto :goto_3

    :cond_b
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_a

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v2, p0

    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    move-object v3, v2

    goto :goto_4

    :cond_d
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobCntMap:Ljava/util/Map;

    if-eqz p0, :cond_e

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/Integer;

    :cond_e
    :goto_4
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxConcurrentCapturesSystemProp:I

    if-eqz p0, :cond_f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_5

    :cond_11
    move p0, v0

    goto :goto_6

    :cond_12
    :goto_5
    const/4 p0, 0x6

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_6

    :cond_13
    const/4 p0, 0x5

    :cond_14
    :goto_6
    if-ne p0, v0, :cond_16

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$SceneMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_15

    if-eq p1, v1, :cond_15

    goto :goto_7

    :cond_15
    move p0, v1

    :cond_16
    :goto_7
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt(I)I

    move-result p0

    return p0
.end method

.method public static isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CAPTURE_EXPERIENCE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->SLOW_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUltraResWithSwHwSensorCapture(Lcom/google/zxing/Result;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldShowAllUi(Lcom/google/zxing/Result;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIForNightVisionMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isUltraResWithSwHwSensorCapture(Lcom/google/zxing/Result;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 45

    move-object/from16 v0, p1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v4, 0x7

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v4, 0x1a

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v8, 0xd

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v8, 0x17

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v10, 0x17

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v10, 0x1c

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x11

    invoke-direct {v8, v9, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v2, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-static {v1, v2, v4, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v8, v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x11

    invoke-direct {v8, v9, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v2, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v14, 0x1

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "EVENT_TRIGGER"

    invoke-direct {v13, v15, v5, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-direct {v13, v15, v5, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v13, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v12

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v12, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v12, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v16, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    move-object/from16 v17, v9

    const/16 v9, 0x9

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-direct {v5, v9, v8}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v12, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0xf

    invoke-direct {v5, v9, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v12, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v12}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    move-object/from16 v19, v14

    const/16 v14, 0x9

    invoke-direct {v12, v14, v8}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v5, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0xf

    const/4 v14, 0x1

    invoke-direct {v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-static {v5, v4, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    invoke-direct {v12, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v14, 0x17

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v14, 0x9

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-direct {v12, v14, v9}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0x11

    invoke-direct {v8, v12, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v12, 0x9

    const/4 v14, 0x1

    invoke-direct {v9, v12, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x11

    const/4 v12, 0x0

    invoke-direct {v8, v9, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v14, 0x9

    invoke-direct {v9, v14, v12}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v9, 0x9

    const/4 v14, 0x1

    invoke-direct {v5, v9, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->PHOTO_MODES:Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v9, v12, v5, v14}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v14, 0x9

    move-object/from16 v22, v9

    const/4 v9, 0x1

    invoke-direct {v5, v14, v9}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v9, 0x0

    invoke-static {v14, v12, v5, v9}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v9, 0x9

    move-object/from16 v23, v7

    const/4 v7, 0x1

    invoke-direct {v5, v9, v7}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v7, 0x0

    invoke-static {v9, v12, v5, v7}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_FAILED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v24, v7

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v25, v4

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v26, v14

    const/16 v14, 0xf

    move-object/from16 v27, v7

    const/4 v7, 0x1

    invoke-direct {v4, v14, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ON_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v14, 0x2

    invoke-direct {v7, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v14, 0x9

    move-object/from16 v28, v5

    const/4 v5, 0x1

    invoke-direct {v7, v14, v5}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_PRELOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    invoke-direct {v7, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v7, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v7, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v29, v4

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v30, v9

    const/16 v9, 0x9

    invoke-direct {v4, v5, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v5, v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v9, 0x19

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v7, 0x9

    const/4 v9, 0x2

    invoke-direct {v5, v9, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x2

    invoke-direct {v5, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v9, 0x18

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v31, v5

    const-string v5, "LONG_PRESS"

    move-object/from16 v32, v10

    const/4 v10, 0x1

    invoke-direct {v9, v3, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    move-object/from16 v33, v5

    const/16 v5, 0x9

    invoke-direct {v9, v5, v10}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v10, "IS_CLI_DISPLAY"

    move-object/from16 v34, v14

    const/4 v14, 0x0

    invoke-direct {v9, v11, v10, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    move-object/from16 v29, v11

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v35, v12

    const-string v12, "HISTORY_STATE"

    invoke-direct {v9, v11, v12, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v11, 0x8

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/16 v11, 0x9

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-direct {v9, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-direct {v9, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v10, 0x9

    invoke-direct {v9, v10, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "PRELOCK_FOCUS_EXIT"

    invoke-direct {v7, v3, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    invoke-direct {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v7, v3, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;-><init>()V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v9, 0x13

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v10, "MCF_PROCESSING"

    const/4 v12, 0x0

    invoke-direct {v9, v15, v10, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v11, "QCFA_SHOT"

    const/4 v14, 0x1

    invoke-direct {v10, v3, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    const/4 v11, 0x3

    invoke-direct {v10, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v11, 0x1d

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v8, v20

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v10, 0x9

    const/4 v14, 0x1

    invoke-direct {v4, v10, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    move-object/from16 v12, v30

    move-object/from16 v11, v35

    const/4 v10, 0x0

    invoke-static {v12, v11, v4, v10}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v8, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;-><init>()V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v10, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    move-object/from16 v20, v15

    const/4 v15, 0x4

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v10, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v10, 0x2

    invoke-direct {v8, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AE_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    move-object/from16 v35, v6

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->LONG_EXP:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    move-object/from16 v36, v7

    const/4 v7, 0x0

    invoke-direct {v5, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v7, 0x2

    invoke-direct {v5, v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v5, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v5, v7, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    move-object/from16 v37, v9

    const/4 v9, 0x2

    invoke-direct {v7, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CREATE_REPROC_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v38, v7

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v39, v15

    const/16 v15, 0x13

    move-object/from16 v40, v13

    const/4 v13, 0x0

    invoke-direct {v7, v15, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-direct {v7, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v15, 0x1b

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v15, 0x0

    invoke-direct {v7, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v9, 0x2

    invoke-direct {v7, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v41, v6

    const/16 v6, 0x13

    move-object/from16 v42, v3

    const/4 v3, 0x1

    invoke-direct {v15, v6, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v3, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v6, 0x1b

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v6, v27

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    const/4 v9, 0x0

    invoke-static {v12, v11, v9, v9}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v8, 0x14

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_ZOOM_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v9, 0x1

    invoke-direct {v4, v9, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-static {v4, v5, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/16 v12, 0x1b

    filled-new-array {v12}, [I

    move-result-object v15

    invoke-direct {v11, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([II)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v11, 0x1

    move-object/from16 v15, v42

    invoke-direct {v9, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    move-object/from16 v8, v17

    invoke-static {v2, v4, v8, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    invoke-direct {v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    const-string v12, "KEY_CODE"

    const/16 v6, 0x1b

    invoke-direct {v11, v15, v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v11, 0x0

    invoke-direct {v6, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    move-object/from16 v12, v41

    invoke-direct {v9, v12, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x0

    invoke-direct {v6, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x13

    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-direct {v9, v11, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v13, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v9, 0x1b

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v7, 0x13

    const/4 v9, 0x1

    invoke-direct {v6, v7, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v13, v7}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v7, 0x1b

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/16 v7, 0x50

    filled-new-array {v7}, [I

    move-result-object v7

    const/4 v9, 0x5

    invoke-direct {v6, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([II)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x1

    invoke-direct {v6, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v6, v28

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v10, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;

    move-object/from16 v7, v40

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_STOP_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    invoke-direct {v13, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v13, 0x7

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v13, 0x2

    invoke-direct {v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v14, 0x8

    move-object/from16 v21, v5

    const/4 v5, 0x1

    invoke-direct {v13, v14, v5}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;

    invoke-direct {v13, v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;-><init>(Z)V

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-direct {v5, v13, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v28, v8

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v40, v3

    const/4 v3, 0x2

    invoke-direct {v8, v15, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v5, v34

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v8, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v8, v19

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v19, v11

    const/4 v11, 0x2

    invoke-direct {v12, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v11, v26

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v26, v4

    const-string v4, "CAPTURE_FINISH"

    move-object/from16 v34, v9

    const/4 v9, 0x1

    invoke-direct {v12, v15, v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LP_CAPTURE_FAIL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v42, v10

    const/4 v10, 0x2

    invoke-direct {v12, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v25

    invoke-static {v3, v10, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v25, v7

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    move-object/from16 v43, v10

    const/4 v10, 0x2

    invoke-direct {v7, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v10, 0x1c

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-static {v3, v6, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v7, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v10, 0x1c

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v7, 0x8

    const/4 v10, 0x1

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;-><init>(Z)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v12, 0x0

    invoke-direct {v6, v7, v12}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v15, v4, v10, v6, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FRAME_COLLECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v44, v3

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v3, v15, v4, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;

    invoke-direct {v6, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;-><init>(Z)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v15, v4, v10, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v5, v15, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v5, v15, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v9, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v5, 0x2

    invoke-direct {v4, v15, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v43

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v5, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v14, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v4, 0x6

    const/4 v14, 0x1

    invoke-direct {v3, v4, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STOP_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CREATE_FINAL_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v8, 0x2

    move-object/from16 v9, v39

    invoke-direct {v6, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x2

    invoke-direct {v8, v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_START_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v6, v27

    invoke-virtual {v8, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v8}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    move-object/from16 v8, v38

    invoke-static {v0, v2, v8, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;

    const/4 v9, 0x1

    move-object/from16 v12, v25

    invoke-direct {v8, v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;I)V

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v8

    move-object/from16 v9, v42

    invoke-virtual {v8, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v14, v34

    invoke-virtual {v8, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v8}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;

    const/4 v8, 0x0

    invoke-direct {v5, v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;I)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    move-object/from16 v5, v17

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;-><init>()V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x4

    move-object/from16 v25, v10

    const/4 v10, 0x1

    invoke-direct {v9, v10, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v26

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v26, v11

    const/4 v11, 0x2

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v5, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v32

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x4

    move-object/from16 v17, v3

    const/4 v3, 0x3

    invoke-direct {v12, v3, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v12, 0xd

    invoke-direct {v10, v12}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v5, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v3, 0xc

    invoke-direct {v12, v3}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v3, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v5, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x4

    move-object/from16 v34, v10

    const/4 v10, 0x3

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v24

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v12, 0xf

    const/4 v10, 0x1

    invoke-direct {v11, v12, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-direct {v7, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x4

    const/4 v12, 0x3

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v13, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    move-object/from16 v3, v37

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v7, 0x6

    const/4 v12, 0x0

    invoke-direct {v3, v7, v12}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v44

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    move-object/from16 v12, v41

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v40

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleCaptureRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SingleCaptureRequestRunnable;-><init>()V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v36

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v10, 0x5

    invoke-direct {v7, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    const/4 v10, 0x3

    const/4 v12, 0x0

    invoke-direct {v7, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(II)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v7, 0x7

    const/4 v11, 0x2

    invoke-direct {v4, v11, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    const/4 v7, 0x3

    const/4 v12, 0x0

    invoke-direct {v4, v12, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(II)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v13, v8}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x4

    const/4 v14, 0x1

    invoke-direct {v7, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    invoke-direct {v7, v12, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v7, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v10, 0x1d

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v10, 0x4

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v17

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v10, 0x1c

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x4

    const/4 v12, 0x2

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x10

    const/4 v14, 0x1

    invoke-direct {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-static {v3, v13, v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x4

    const/4 v12, 0x2

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v11, 0xb

    invoke-direct {v10, v11}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x10

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-static {v3, v13, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x4

    const/4 v12, 0x3

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v7, v14, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;

    const/4 v11, 0x1

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v10, v15, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v15, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v11, v33

    const/4 v14, 0x1

    invoke-direct {v10, v12, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AcceptReviewBeforeBurst;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$AcceptReviewBeforeBurst;-><init>()V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x4

    const/4 v14, 0x1

    invoke-direct {v10, v14, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v12, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x19

    invoke-direct {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x4

    const/4 v14, 0x1

    invoke-direct {v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v12, 0x1

    const-string v14, "REVIEW_ACCEPT"

    invoke-direct {v11, v15, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v35

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    move-object/from16 v17, v14

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v11, v14, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v11, v26

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_GL_FIRST_DRAW_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v14, "LOADING_FIRST_FRAME_COMPLETE"

    move-object/from16 v19, v7

    move-object/from16 v7, v29

    const/4 v10, 0x1

    invoke-direct {v12, v7, v14, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v11, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;

    const/4 v10, 0x3

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v11, 0x9

    const/4 v14, 0x1

    invoke-direct {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

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

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 v12, 0x0

    invoke-direct {v3, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v28

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v11, v32

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v26, v9

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v7, 0xf

    invoke-direct {v9, v7, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    invoke-direct {v7, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v9, 0xd

    invoke-direct {v7, v9}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    move-object/from16 v7, v34

    invoke-static {v2, v3, v10, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v14, 0xc

    invoke-direct {v12, v14}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v14, 0xf

    const/4 v7, 0x1

    invoke-direct {v12, v14, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x1a

    const/4 v14, 0x1

    invoke-direct {v7, v9, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v30

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x1a

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v10, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    invoke-direct {v9, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v10, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v12, 0x8

    invoke-direct {v10, v12}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v12, "PROCESSING_COMPLETE"

    const/4 v14, 0x1

    invoke-direct {v10, v15, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v25

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_ADJUST_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v13, 0xd

    invoke-direct {v12, v13}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v31

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v14, "CAPTURE_TRIGGER"

    invoke-direct {v11, v14, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v13, 0x1

    move-object/from16 v42, v15

    move-object/from16 v15, v16

    move-object/from16 v14, v20

    invoke-direct {v12, v14, v15, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v9, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    const/4 v14, 0x1

    invoke-static {v5, v14}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v6, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-boolean v14, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v19

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v14, 0x1

    invoke-direct {v7, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Z)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v12, 0x0

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Z)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v7, v22

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Z)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v14, 0x1

    invoke-direct {v7, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Z)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v7, v21

    invoke-static {v3, v7, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x17

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v11, 0x5

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v14, 0x1

    invoke-direct {v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Z)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x17

    invoke-direct {v8, v9, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v7, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Z)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v10, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v8, 0x15

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v8, 0x2

    move-object/from16 v9, v29

    invoke-direct {v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v5, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v35

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    move-object/from16 v15, v42

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-direct {v5, v12, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v7, 0x1

    move-object/from16 v8, v17

    invoke-direct {v5, v15, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x12

    const/4 v12, 0x0

    invoke-direct {v8, v9, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x5

    const/4 v14, 0x1

    invoke-direct {v8, v14, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v2, v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x12

    const/4 v14, 0x1

    invoke-direct {v8, v9, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v9, "REVIEW_SAVED"

    const/4 v12, 0x0

    invoke-direct {v8, v15, v9, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x5

    invoke-direct {v8, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x12

    const/4 v14, 0x1

    invoke-direct {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v15, v9, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x5

    invoke-direct {v10, v14, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v8, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAVING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    const/4 v14, 0x1

    invoke-static {v15, v9, v14, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v26

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x5

    const/4 v11, 0x2

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x5

    const/4 v12, 0x3

    invoke-direct {v4, v12, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-static {v0, v2, v7, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v7, 0x5

    const/4 v14, 0x1

    invoke-direct {v4, v14, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    move-object/from16 v7, v34

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->COLLAGE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v24

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v5, 0xf

    const/4 v14, 0x1

    invoke-direct {v4, v5, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/QcfaStates;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/QcfaStates;-><init>(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->configure(Lcom/motorola/camera/CameraKpi;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
