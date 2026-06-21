.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;->$r8$classId:I

    const/4 v2, 0x4

    const-string v3, "documentPagerController"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "scanSession"

    const/4 v8, 0x3

    const/4 v9, 0x0

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v2, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isGalleryAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v3, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v3, v3, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/CameraData;

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isPdfViewerAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->getPdfIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lcom/motorola/camera/utility/ColorUtil;->supportsIntent(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)Z

    move-result v6

    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v10

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDownloadDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sput v6, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->downloadDialogAction:I

    return-object v10

    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDownloadDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanConnection:Lh/h;

    invoke-virtual {v0}, Lh/h;->isAdobeScanInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v5

    :cond_1
    sput v4, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->downloadDialogAction:I

    return-object v10

    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showCropEditDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v10

    :pswitch_3
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showCropEditDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->isCropping(Z)V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;

    invoke-direct {v2, v0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v9, v9, v2, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v10

    :pswitch_4
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showCropEditDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->isCropping(Z)V

    return-object v10

    :pswitch_5
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$ToolbarCrop$1$2$1$1;

    invoke-direct {v2, v0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$ToolbarCrop$1$2$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v9, v9, v2, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v10

    :pswitch_6
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$ToolbarCrop$1$1$1$1;

    invoke-direct {v2, v0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$ToolbarCrop$1$1$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v9, v9, v2, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v10

    :pswitch_7
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-virtual {v0, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->isCropping(Z)V

    return-object v10

    :pswitch_8
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->onBackInvoked()V

    return-object v10

    :pswitch_9
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanResultPreviewBitmaps$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lh/C;->e:Lh/p;

    iget-boolean v1, v0, Lh/p;->e:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lh/p;->d:Lf/b;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lf/b;->c:Lkotlin/jvm/functions/Function0;

    check-cast v0, Lf/A;

    invoke-virtual {v0}, Lf/A;->invoke()Ljava/lang/Object;

    :goto_0
    return-object v10

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :pswitch_b
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lh/C;->e:Lh/p;

    iget-boolean v1, v0, Lh/p;->e:Z

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lh/p;->d:Lf/b;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lf/b;->b:Lkotlin/jvm/functions/Function0;

    check-cast v0, Lf/A;

    invoke-virtual {v0}, Lf/A;->invoke()Ljava/lang/Object;

    :goto_1
    return-object v10

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :pswitch_c
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lh/C;->getCurrentPageIndex()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->setToolbarAction(II)V

    sget-object v1, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Markup:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->launchScanApp(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)V

    return-object v10

    :cond_8
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :pswitch_d
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lh/C;->getCurrentPageIndex()I

    move-result v1

    invoke-static {v2, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->setToolbarAction(II)V

    sget-object v1, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Cleanup:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->launchScanApp(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)V

    return-object v10

    :cond_9
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :pswitch_e
    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lh/C;->getCurrentPageIndex()I

    move-result v1

    invoke-static {v8, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->setToolbarAction(II)V

    sget-object v1, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Filter:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->launchScanApp(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)V

    return-object v10

    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :pswitch_f
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lh/C;->getCurrentPageIndex()I

    move-result v1

    invoke-static {v5, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->setToolbarAction(II)V

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lh/C;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lh/C;->getPage(I)Lh/F;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lh/F;->a:Lc/X;

    iget v1, v0, Lc/X;->o:I

    add-int/lit8 v1, v1, 0x5a

    invoke-virtual {v0, v1}, Lc/X;->d(I)V

    :cond_b
    return-object v10

    :cond_c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :pswitch_10
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->isCropping(Z)V

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lh/C;->getCurrentPageIndex()I

    move-result v1

    invoke-static {v4, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->setToolbarAction(II)V

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lh/C;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lh/C;->getPage(I)Lh/F;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v9, Lh/D;

    iget-object v1, v1, Lh/F;->c:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/s1;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lc/s1;->g()Lc/a;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_e
    new-instance v1, Lc/a;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v4, v5, v6}, Lc/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_f
    invoke-direct {v9, v1}, Lh/D;-><init>(Lc/a;)V

    :cond_10
    iput-object v9, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->initialCropState:Lh/D;

    return-object v10

    :cond_11
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_12
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :pswitch_11
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showSaveLocationDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v10

    :pswitch_12
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result v1

    if-eqz v1, :cond_13

    move v2, v8

    :cond_13
    const-string v1, "ANALYTICS_ADOBE_OPEN_JPG_GALLERY"

    invoke-static {v2, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processAfterSaveAnalytics(ILjava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v2, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraData;

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/motorola/camera/CameraData;

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v9, v9, v11, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_14
    return-object v10

    :pswitch_13
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    const-string v1, "ANALYTICS_ADOBE_OPEN_PDF_FILES"

    invoke-static {v8, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processAfterSaveAnalytics(ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->getPdfIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_15

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AdobeScanEditorActivity"

    const-string v2, "Error trying to open PDF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_2
    return-object v10

    :pswitch_14
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    const-string v1, "ANALYTICS_ADOBE_OPEN_PDF_ADOBE"

    invoke-static {v5, v1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processAfterSaveAnalytics(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->onOpenPdfInAdobeScan()V

    return-object v10

    :pswitch_15
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-object v10

    :pswitch_16
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-static {v6}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processDiscardAnalytics(Z)V

    invoke-static {v4}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearScanSession(Z)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-object v10

    :pswitch_17
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDiscardScanDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v10

    :pswitch_18
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, La/l;->saveStartTime:J

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$3$1$1;

    invoke-direct {v2, v0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$3$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v9, v9, v2, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v10

    :pswitch_19
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, La/l;->addPageTime:J

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-object v10

    :pswitch_1a
    sget v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, La/l;->retakeTime:J

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;

    invoke-direct {v2, v0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v9, v9, v2, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
