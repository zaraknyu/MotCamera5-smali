.class public final Lcom/motorola/camera/instrumentreport/MeasureKpi;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/CameraKpi$CameraKpiListener;


# static fields
.field public static final mKpiList:Ljava/util/List;

.field public static final mKpiParentTagMap:Ljava/util/HashMap;

.field public static final mKpiTagLevelMap:Ljava/util/HashMap;


# instance fields
.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiTagLevelMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiParentTagMap:Ljava/util/HashMap;

    sget-object v30, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_COUNT:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v31, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_ADD_PAGE_TO_CAPTURE_PREVIEW_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_ADD_PAGE_TO_SCAN_MODE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_AUTO_CAPTURE_TRIGGER_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_LOAD_CAPTURE_PREVIEW_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_RETAKE_TO_CAPTURE_PREVIEW_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_RETAKE_TO_SCAN_MODE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v8, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_SAVE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v9, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_ENHANCE_PROCESSING_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v10, Lcom/motorola/camera/CameraKpi$KPI;->AI_PERSONAL_COLOR_TONE_PROCESSING_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v11, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v14, Lcom/motorola/camera/CameraKpi$KPI;->HAL_PICTURE_CALLBACK_JPEG:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v15, Lcom/motorola/camera/CameraKpi$KPI;->PANORAMA_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v16, Lcom/motorola/camera/CameraKpi$KPI;->MR_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v17, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v18, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v19, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v20, Lcom/motorola/camera/CameraKpi$KPI;->START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v21, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v22, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v23, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v24, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v25, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v26, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v27, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v28, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_TO_SHOT:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v29, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_AVG:Lcom/motorola/camera/CameraKpi$KPI;

    filled-new-array/range {v2 .. v31}, [Lcom/motorola/camera/CameraKpi$KPI;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    const-string v2, "ADOBE_SCAN_ADD_PAGE_TO_CAPTURE_PREVIEW_TIME_O"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ADOBE_SCAN_ADD_PAGE_TO_SCAN_MODE_TIME_O"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ADOBE_SCAN_AUTO_CAPTURE_TRIGGER_TIME_O"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ADOBE_SCAN_RETAKE_TO_CAPTURE_PREVIEW_TIME_O"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ADOBE_SCAN_LOAD_CAPTURE_PREVIEW_TIME_O"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "ADOBE_SCAN_RETAKE_TO_SCAN_MODE_TIME_O"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ADOBE_SCAN_SAVE_TIME_O"

    invoke-virtual {v1, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "HAL_FOCUS_CALLBACK"

    const-string v11, "SHOT_TO_SHOT_O"

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "HAL_GET_PARAMS"

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "HAL_SET_PARAMS"

    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "HAL_SHUTTER_CALLBACK"

    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "HAL_PICTURE_CALLBACK_JPEG"

    invoke-virtual {v1, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v15

    const-string v15, "PANORAMA_SAVE"

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v15

    const-string v15, "MR_STOP"

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v11

    const-string v11, "SHOT_TO_SHOT_UI_O"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v11

    const-string v11, "SHUTTER_LAG_O"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "START_PREVIEW"

    move-object/from16 v21, v11

    const-string v11, "TOTAL_STARTUP_W_CAF_O"

    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v3

    const-string v3, "STARTUP_PREVIEW_FRAME_O"

    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TOGGLE_CAMERA_O"

    move-object/from16 v23, v15

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TOGGLE_MODE_O"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TOTAL_STARTUP_O"

    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "START_TO_HAL_OPEN"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MULTI_SHOT_TO_SHOT"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MULTI_SHOT_AVG"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MULTI_SHOT_COUNT"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "VIDEO_COMPLETION"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TOTAL_CAPTURE_TIME_O"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AUTO_ENHANCE_PROCESSING_TIME_O"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AI_PERSONAL_COLOR_TONE_PROCESSING_TIME_O"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v23

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "START_TO_HAL_OPEN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "STARTUP_PREVIEW_FRAME_O"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TOGGLE_CAMERA_O"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TOGGLE_MODE_O"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TOTAL_STARTUP_O"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MULTI_SHOT_TO_SHOT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MULTI_SHOT_AVG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MULTI_SHOT_COUNT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VIDEO_COMPLETION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TOTAL_CAPTURE_TIME_O"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AUTO_ENHANCE_PROCESSING_TIME_O"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AI_PERSONAL_COLOR_TONE_PROCESSING_TIME_O"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/concurrent/FileLock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Landroidx/room/concurrent/FileLock;)V

    new-instance p1, Landroidx/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Lcom/motorola/camera/instrumentreport/MeasureKpi;)V

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;JI)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;-><init>(Lcom/motorola/camera/CameraKpi$KPI;JI)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
