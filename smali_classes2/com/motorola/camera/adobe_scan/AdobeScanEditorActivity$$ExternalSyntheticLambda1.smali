.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "it"

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ANALYTICS_ADOBE_OPEN_PDF_ADOBE"

    invoke-static {v5, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processAfterSaveAnalytics(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->onOpenPdfInAdobeScan()V

    return-object v7

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v5

    :cond_0
    const-string v1, "ANALYTICS_ADOBE_OPEN_PDF_FILES"

    invoke-static {v4, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processAfterSaveAnalytics(ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->getPdfIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdobeScanEditorActivity"

    const-string v2, "Error trying to open PDF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v7

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v8, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result v1

    if-eqz v1, :cond_2

    move v4, v5

    :cond_2
    const-string v1, "ANALYTICS_ADOBE_OPEN_JPG_GALLERY"

    invoke-static {v4, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processAfterSaveAnalytics(ILjava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v4, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/CameraData;

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/motorola/camera/CameraData;

    new-instance v14, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v14, v1, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v8, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_3
    return-object v7

    :pswitch_2
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    move-object/from16 v4, p1

    check-cast v4, Lcom/adobe/scan/sdk/ScanAppConnection$Result;

    sget v5, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    const-string v5, "scanAppResult"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v4, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v5, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;

    invoke-direct {v5, v0, v4, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lcom/adobe/scan/sdk/ScanAppConnection$Result;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v5, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1

    :cond_4
    instance-of v0, v4, Lcom/adobe/scan/sdk/ScanAppConnection$Result$AppUnavailable;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDownloadDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_LAUNCH_ADOBE_SCAN_APP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    instance-of v0, v4, Lcom/adobe/scan/sdk/ScanAppConnection$Result$Canceled;

    if-eqz v0, :cond_6

    :goto_1
    return-object v7

    :cond_6
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
