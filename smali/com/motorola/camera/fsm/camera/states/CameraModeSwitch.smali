.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_TOP_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CHANGE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CHANGE_NEW_INTENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN_WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->OPEN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_MCF_INIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCROLL:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_SURFACES:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UI_COMPONENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE_SHOW_UI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS_CHECK:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS_EXPLAIN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CANNOT_SWITCH:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_RESUME_ACTIVITY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_TOP_ACTIVITY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_TOP_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 6

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "HISTORY_STATE"

    invoke-direct {v2, v4, v5, p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object p0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object p0
.end method

.method public static getFallbackMode(ILjava/util/List;Z)I
    .locals 3

    const/16 v0, 0x12

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x22

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/16 v0, 0x1f

    const/16 v1, 0x18

    if-ne p0, v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    if-ne p0, v0, :cond_5

    if-nez p2, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    :cond_5
    const/16 p2, 0x9

    const/4 v0, 0x0

    if-eq p0, p2, :cond_8

    const/4 p2, 0x2

    if-ne p0, p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_7
    return p0

    :cond_8
    :goto_0
    return v0
.end method

.method public static getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v2, "MCF_INIT"

    const/4 v3, 0x1

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v1, v4, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object v1
.end method

.method public static getLaunchModeUiEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object v1
.end method

.method public static getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object v1
.end method

.method public static getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/16 v4, 0x9

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object v1
.end method

.method public static getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "SWITCH_CASE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSwitchCase, expect SwitchCase but get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraModeSwitch"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "MODE_DIRECTION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0
.end method

.method public static getSwitchEntryTransitions()Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/16 v5, 0x19

    filled-new-array {v5}, [I

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(II[I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v5, 0x2

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v5, 0x8

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v4, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/16 v8, 0x9

    invoke-direct {v4, v8, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v8, 0xd

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v8, v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v9, 0x9

    invoke-direct {v8, v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v10, 0x8

    invoke-direct {v8, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v9, 0xd

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v9, 0x10

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v9, 0x12

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v8, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v8, 0x2

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v8, 0xa

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v8, 0x8

    invoke-direct {v4, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v8, 0x9

    invoke-direct {v4, v8, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DV_POSTURE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v4, 0x2

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v4, v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v9, 0xa

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v9, 0x8

    invoke-direct {v4, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v7, 0x9

    invoke-direct {v4, v7, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v5, "DV_POSTURE"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v3, v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INTENT_EXTRA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v3, 0x2

    invoke-direct {v2, v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSwitchModeEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Z[Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v2, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object v1
.end method

.method public static getTenBitSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "TEN_BIT_MODE_SWITCH_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-object p0
.end method

.method public static getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "USE_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/UseCase;

    return-object p0
.end method

.method public static isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "USE_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "USE_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/UseCase;

    .line 2
    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    return p0
.end method

.method public static varargs isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z
    .locals 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne v3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isVoiceAssistantSwitch(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CAPTURE_TRIGGER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p0, v2, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 47

    move-object/from16 v0, p1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchModeEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLaunchModeUiEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v7, 0xd

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    const-string v7, "LOADING_COMPLETE"

    const/4 v8, 0x1

    invoke-static {v3, v7, v8, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0xf

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v11, 0x1

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v13, "EVENT_TRIGGER"

    invoke-direct {v10, v12, v13, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v7, v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v9, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v12, v13, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NEW_INTENT_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v7, v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_GL_FIRST_DRAW_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v11, "LOADING_FIRST_FRAME_COMPLETE"

    invoke-direct {v9, v10, v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v2, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    invoke-direct {v13, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v13

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v13, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v14, v3, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v13, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v13}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v13

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v13, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v15, v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v13, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v13}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    move-object/from16 v16, v9

    const/16 v9, 0x1b

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v6, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v17, v14

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    move-object/from16 v18, v15

    const/16 v15, 0x8

    move-object/from16 v19, v13

    sget-object v13, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v14, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v15, 0x1

    move-object/from16 v20, v5

    const/4 v5, 0x1

    invoke-direct {v14, v15, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v6, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    move-object/from16 v21, v14

    const/16 v14, 0x8

    invoke-direct {v15, v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v15, 0x1

    move-object/from16 v22, v13

    const/4 v13, 0x1

    invoke-direct {v14, v15, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    move-object/from16 v23, v6

    const/4 v6, 0x3

    invoke-direct {v15, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v15, 0xd

    invoke-direct {v6, v15}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v15, 0x1c

    move-object/from16 v24, v9

    const/4 v9, 0x1

    invoke-direct {v6, v15, v9}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v25, v8

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v26, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v27, v13

    filled-new-array/range {v26 .. v26}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v13, 0x1a

    invoke-direct {v8, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v8, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v6, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    invoke-static {v6, v9, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v26 .. v26}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v15, "MCF_INIT"

    move-object/from16 v29, v7

    move-object/from16 v28, v11

    const/4 v7, 0x1

    const/4 v11, 0x0

    invoke-direct {v13, v3, v15, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v7, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v6, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v26 .. v26}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v8, "MCF_INIT_PENDING"

    const/4 v13, 0x1

    invoke-direct {v7, v3, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v30, v4

    const-string v4, "MCF_PROCESSING"

    move-object/from16 v31, v5

    const/4 v5, 0x0

    invoke-direct {v13, v12, v4, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v32, v10

    const-string v10, "HAL_PROCESSING"

    invoke-direct {v13, v12, v10, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v33, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v34, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v35, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v36, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v37, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v38, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v39, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v40, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array/range {v33 .. v40}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v5, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v6, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v42, v1

    move-object/from16 v41, v7

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-direct {v13, v12, v4, v1, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v33 .. v40}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v1, v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v5, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-static {v1, v9, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {v7, v12, v10, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v33 .. v40}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v10

    move-object/from16 v11, v36

    move-object/from16 v13, v38

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v7, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v1, v5, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v43, v5

    filled-new-array/range {v26 .. v26}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v5

    invoke-direct {v10, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v5, v3, v8, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v5, v3, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v2, v42

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v6, v41

    invoke-virtual {v5, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v5, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v5, v7, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    invoke-direct {v8, v12, v4, v11, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v8, 0xe

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v5, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v5, 0x1b

    const/4 v11, 0x0

    invoke-direct {v4, v5, v11}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>()V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v11, "CLOSE_ON_STOP"

    move-object/from16 v42, v5

    move-object/from16 v41, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v10, v12, v11, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0x11

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0x12

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v44, v9

    move-object/from16 v9, v36

    filled-new-array {v9, v13}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v9, 0x2

    const/4 v13, 0x1

    invoke-direct {v6, v9, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-static {v1, v4, v7, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v34 .. v34}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0x13

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0x14

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v9, 0x2

    const/4 v13, 0x1

    invoke-direct {v6, v9, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-static {v1, v4, v7, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v34 .. v34}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v9, 0x2

    const/4 v13, 0x1

    invoke-direct {v6, v9, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-static {v1, v4, v7, v14}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v34 .. v34}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0xb

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0xc

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v10, 0x2

    const/4 v13, 0x1

    invoke-direct {v9, v10, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v36, v34

    move-object/from16 v34, v35

    move-object/from16 v38, v37

    move-object/from16 v35, v39

    move-object/from16 v37, v40

    filled-new-array/range {v33 .. v38}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v7

    move-object/from16 v9, v33

    move-object/from16 v10, v36

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v9, 0x1

    invoke-direct {v13, v12, v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    move-object/from16 v34, v6

    move-object/from16 v6, v32

    invoke-direct {v9, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v9, v12, v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v11, 0xb

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x15

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0xc

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x19

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_CALLED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v33 .. v33}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x19

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0xe

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_REQUIRED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v7

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v35, v9

    const/16 v9, 0x15

    move-object/from16 v36, v6

    const/4 v6, 0x1

    invoke-direct {v7, v9, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v7, 0x16

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v13, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_GRANTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x15

    move-object/from16 v37, v8

    const/4 v8, 0x0

    invoke-direct {v9, v13, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v9, 0x16

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x3

    move-object/from16 v38, v12

    const/4 v12, 0x1

    invoke-direct {v9, v13, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v12, 0x2

    invoke-direct {v9, v12, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x3

    move-object/from16 v40, v10

    const/4 v10, 0x1

    invoke-direct {v12, v13, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x5

    invoke-direct {v12, v13, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v10, 0x2

    const/4 v13, 0x0

    invoke-direct {v9, v10, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v7, 0x11

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v7, 0x6

    invoke-direct {v4, v7}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v4, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/4 v12, 0x6

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    move-object/from16 v10, v43

    invoke-virtual {v4, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v12, v3, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_TOP_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v13, 0x12

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v12

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA_TOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v12, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v12, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v12}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v12, 0x13

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v9, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v9}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v9, v3, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-static {v0, v1, v11, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v7, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v7, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v7}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v12, 0x12

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v12, 0x17

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v7, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_DENIED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v7, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v7, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v7}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v7, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v7, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v13, 0x7

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v7, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v13, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v7, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-static {v7, v9, v8}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v43, v3

    const-string v3, "RECORDING_START"

    invoke-direct {v13, v15, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v14, 0x2

    move-object/from16 v45, v10

    const/4 v10, 0x0

    invoke-direct {v13, v14, v10}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v13, 0x7

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v13, 0x5

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v7, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-static {v7, v9, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v12, 0x0

    invoke-direct {v10, v15, v3, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v10, 0x2

    const/4 v13, 0x0

    invoke-direct {v3, v10, v13}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v10, 0x7

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TORCH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v9, 0x8

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v31

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v11, 0x1c

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v12, 0x9

    move-object/from16 v13, v40

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v14, "CLOSE_AFTER_OPEN"

    move-object/from16 v31, v5

    move-object/from16 v13, v38

    const/4 v5, 0x0

    invoke-direct {v12, v13, v14, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v26 .. v26}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v12, 0x1d

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v12, 0x0

    invoke-direct {v5, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-static {v3, v7, v8}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v13, v14, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v38, v9

    const/4 v9, 0x5

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-static {v3, v7, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v11, "VIDEO_RECORDING"

    move-object/from16 v46, v10

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-direct {v9, v15, v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v39 .. v39}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-static {v3, v7, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v13, v14, v10, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v10, 0x5

    const/4 v12, 0x1

    invoke-direct {v9, v10, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v37

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v7, v13, v14, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-static {v13, v14, v10, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    invoke-static {v13, v14, v10, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v9, v34

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v34, v11

    const/4 v11, 0x1

    invoke-direct {v12, v13, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    move-object/from16 v37, v15

    move-object/from16 v15, v36

    invoke-direct {v11, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_TOP_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v30

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v10, v13, v14, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-static {v13, v14, v11, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_RESTRICTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v10, v13, v14, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v13, v14, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-static {v0, v1, v8, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;-><init>()V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v11, 0xb

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v11, 0xf

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v11, 0x11

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v10, 0x10

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v35

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v11, 0xc

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v11, "OPEN_AFTER_CLOSE"

    const/4 v12, 0x0

    invoke-direct {v10, v13, v11, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v35, v14

    const/4 v14, 0x0

    invoke-direct {v4, v13, v11, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-static {v1, v3, v10, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v4, v13, v11, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v4, v13, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v14, 0x10

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v11, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v10, v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    invoke-direct {v10, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v11, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v14, 0x2

    invoke-direct {v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v10, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v32

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x1

    invoke-direct {v10, v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    move-object/from16 v3, v46

    invoke-static {v0, v1, v3, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v10, v45

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v32, v7

    const/4 v7, 0x0

    invoke-direct {v14, v13, v11, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v0, 0x5

    invoke-direct {v14, v0, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v0, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    invoke-static {v0, v10, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v6, v13, v11, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v7, 0x5

    const/4 v10, 0x1

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v3, v13, v11, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v6, v13, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x2

    invoke-direct {v6, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v3, v13, v11, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v3, v15, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v0, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v10, 0x1

    invoke-direct {v3, v13, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0, v12, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v44

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;-><init>()V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v10, 0x1c

    const/4 v14, 0x0

    invoke-direct {v8, v10, v14}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v38

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v12, 0x1c

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v14, 0x4

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v14, 0x9

    move-object/from16 v4, v40

    invoke-direct {v12, v14, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v36, v4

    move-object/from16 v10, v35

    const/4 v4, 0x0

    invoke-direct {v14, v13, v10, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v4, v14}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v4, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;-><init>(Z)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v10, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-static {v13, v10, v14, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v4, v13, v10, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v13, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v12, 0xb

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_MODE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v4, v13, v10, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v13, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v8, v13, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "CLOSE_ENTER"

    invoke-direct {v8, v13, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v8, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v32

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    invoke-static {v13, v10, v14, v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v4, v30

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v8, 0x19

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v13, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v13, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_ABANDONED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v4, v13, v10, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v4, v13, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-static {v1, v0, v6, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>()V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v5, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v8, v34

    move-object/from16 v7, v37

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v6, v7, v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v39 .. v39}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v6, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v6, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v9, v7, v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v39 .. v39}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    invoke-direct {v9, v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v9, 0x6

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "KNIFE_SWITCH_BEFORE_RESUMING"

    const/4 v12, 0x1

    invoke-direct {v6, v7, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v6, v7, v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v39 .. v39}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v6, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v9, v7, v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v39 .. v39}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-direct {v8, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v38

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v8, 0x9

    move-object/from16 v10, v36

    invoke-direct {v6, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v26 .. v26}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v8, 0x0

    const/4 v12, 0x1

    invoke-direct {v6, v8, v12}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v8, 0x6

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_2D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    const-string v6, "LOADING_2D_COMPLETE"

    const/4 v8, 0x2

    invoke-direct {v5, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_3D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    const-string v6, "LOADING_3D_COMPLETE"

    invoke-direct {v5, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v5, v29

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    const/4 v6, 0x2

    move-object/from16 v8, v28

    invoke-direct {v5, v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v5, 0x1a

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v5, v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v8, 0x2

    move-object/from16 v11, v43

    invoke-direct {v6, v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v8, 0xa

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v12, 0x8

    invoke-direct {v6, v12, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v8, 0x9

    invoke-direct {v6, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE_SHOW_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v8, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v12, 0xa

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v8, v12, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v38, v13

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    move-object/from16 v34, v10

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v20, v15

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v14

    const/4 v14, 0x0

    move-object/from16 v28, v2

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v29, v5

    const-string v5, "HISTORY_STATE"

    invoke-direct {v13, v2, v5, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const/4 v15, 0x1

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v11, "CAPTURE_TRIGGER"

    invoke-direct {v13, v1, v11, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v15, 0x1d

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v15, 0x18

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/4 v15, 0x4

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x1

    move-object/from16 v30, v9

    const/4 v9, 0x0

    invoke-direct {v13, v9, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v9

    const/4 v9, 0x0

    invoke-direct {v13, v2, v5, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v13, 0x18

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v13, 0x16

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v13, 0x0

    invoke-direct {v12, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v2, v5, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v9, v1, v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x1d

    invoke-direct {v1, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x18

    invoke-direct {v1, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v8, v9, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/4 v8, 0x5

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-direct {v8, v2, v5, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v11, v14, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v8, 0x18

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/4 v7, 0x7

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v7, 0x1b

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v6, v4}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v6, v4}, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    move-object/from16 v9, v30

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v7, "DV_POSTURE"

    move-object/from16 v11, v43

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v4, v11, v7, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {v4, v8, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v4, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-direct {v4, v11, v7, v12, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    invoke-direct {v4, v8, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_AUTO_RECORD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {v4, v7, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v4}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v6, v1, v3, v3}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    move-object/from16 v6, v27

    invoke-virtual {v4, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v4, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v7, v29

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v8, v28

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    move-object/from16 v12, v19

    invoke-virtual {v10, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v13, v18

    invoke-virtual {v10, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v15, 0x1b

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v10, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v10}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v10, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v10, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v10}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    move-object/from16 v14, v31

    invoke-virtual {v10, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v3, 0x1d

    invoke-direct {v15, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v10, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v15, 0x8

    invoke-direct {v3, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v10, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v10}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v3, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v19, v1

    const/16 v1, 0x1b

    const/4 v14, 0x1

    invoke-direct {v15, v1, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v15}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v15, 0x8

    move-object/from16 v27, v12

    move-object/from16 v12, v26

    invoke-direct {v14, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v15, 0x9

    move-object/from16 v7, v33

    invoke-direct {v14, v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/16 v15, 0xa

    invoke-direct {v7, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v10, 0x1b

    const/4 v14, 0x0

    invoke-direct {v7, v10, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-direct {v7, v2, v5, v10, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v10, v32

    invoke-static {v1, v7, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v10, v2, v5, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v15, 0x2

    invoke-direct {v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v7, v25

    invoke-static {v1, v7, v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/4 v14, 0x0

    invoke-direct {v10, v14}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v10, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v14, 0x8

    invoke-direct {v10, v14}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v14, 0xa

    move-object/from16 v15, v20

    invoke-direct {v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v14, 0x9

    move-object/from16 v20, v3

    move-object/from16 v3, v34

    invoke-direct {v10, v14, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0x8

    invoke-direct {v3, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v3, v24

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v14, 0xa

    invoke-direct {v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v14, 0x8

    move-object/from16 v15, v22

    invoke-direct {v10, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v10}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-static {v0, v1, v10, v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/16 v10, 0x15

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(I)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    invoke-direct {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct {v10, v2, v5, v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-static {v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v9, 0xa

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v9, 0x8

    invoke-direct {v5, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const-string v10, "ONLINE_HELP_FROM_MODE"

    const/4 v11, 0x0

    const-string v14, "ONLINE_HELP_FROM_TYPE"

    move-object/from16 v15, v38

    invoke-direct {v9, v15, v14, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v1, v9}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v10, v29

    invoke-static {v1, v9, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v13, 0x8

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v13, 0xa

    move-object/from16 v16, v6

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-direct {v11, v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v13, 0x5

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v11}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-static {v1, v7, v10}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0x8

    invoke-direct {v9, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/16 v10, 0xa

    invoke-direct {v9, v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v9, 0x5

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-static {v0, v1, v2, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const-string v5, "ONLINE_HELP_FROM_MODE_EDIT"

    const/4 v6, 0x0

    invoke-direct {v2, v15, v14, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-static {v4, v0, v1, v8}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v14, v31

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;

    const/16 v6, 0x1d

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    move-object/from16 v3, v19

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v5}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v6, v16

    invoke-virtual {v1, v6}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroidx/profileinstaller/DeviceProfileWriter;->fireChangeEvent(Z)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    move-object/from16 v3, v44

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v2, v41

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v6, 0x11

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Landroidx/profileinstaller/DeviceProfileWriter;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
