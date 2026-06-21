.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v6, 0x7f120048

    invoke-direct {v5, v6}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 v6, 0xbb8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$onResumeScan$2$1;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$onResumeScan$2$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v5, v5, v2, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v4

    :pswitch_0
    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->startAdobeEditorActivity()V

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->setCanShowBoundaryHint(Z)V

    return-object v4

    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isAutoCapture$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isCapturing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isStorageFull$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v1

    iget-object v5, v1, Lh/C;->i:[F

    iget-object v6, v1, Lh/C;->h:[F

    iget-object v7, v1, Lh/C;->j:[F

    iget-object v8, v1, Lh/C;->k:[F

    const v9, 0x3f19999a    # 0.6f

    invoke-static {v9, v7, v8}, Lh/C;->a(F[F[F)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    const v9, 0x3e3851ec    # 0.18f

    invoke-static {v9, v6, v5}, Lh/C;->a(F[F[F)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v2

    :goto_1
    invoke-static {v6, v10, v5, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v10, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v9, :cond_2

    iput v10, v1, Lh/C;->f:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v1, Lh/C;->g:J

    goto :goto_2

    :cond_2
    iget v5, v1, Lh/C;->f:I

    if-nez v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v1, Lh/C;->g:J

    :cond_3
    iget v5, v1, Lh/C;->f:I

    add-int/2addr v5, v2

    iput v5, v1, Lh/C;->f:I

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Lh/C;->g:J

    sub-long/2addr v5, v7

    sget-object v1, Lg/v;->a:Lg/v;

    if-nez v1, :cond_4

    new-instance v1, Lg/v;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lg/v;->a:Lg/v;

    :cond_4
    const-wide/16 v7, 0x3e8

    cmp-long v1, v5, v7

    if-ltz v1, :cond_9

    iget-boolean v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->hasFocus:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->checkDocState:Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_5

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->docDetectionResult:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    sget-object v3, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->Document:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    if-ne v1, v3, :cond_7

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ADOBE_AUTO_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->updateCapturingState(Z)V

    sget-wide v5, La/l;->autoCaptureDetectionTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sget-wide v9, La/l;->autoCaptureDetectionTime:J

    sub-long/2addr v5, v9

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_AUTO_CAPTURE_TRIGGER_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    sput-wide v7, La/l;->autoCaptureDetectionTime:J

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v1, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/motorola/camera/EventListener;

    const/4 v15, 0x1

    move-wide v11, v9

    move-wide v13, v9

    invoke-static/range {v9 .. v16}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->getCaptureEvent(JJJILcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object v1

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    const-string v5, "null cannot be cast to non-null type android.os.Bundle"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "IS_ADOBE_AUTO_CAPTURE"

    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_7
    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;->NotRequested:Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->checkDocState:Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->NotDocument:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->docDetectionResult:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;->Requested:Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->checkDocState:Lcom/motorola/camera/adobe_scan/AdobeSdkManager$DocDetectState;

    :cond_9
    :goto_4
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
