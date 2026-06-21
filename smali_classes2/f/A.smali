.class public final synthetic Lf/A;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    iput p8, p0, Lf/A;->$r8$classId:I

    invoke-direct/range {p0 .. p7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lf/A;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lf/C;

    iget-object v0, p0, Lf/C;->f:Lf/v;

    iget-object v0, v0, Lf/v;->j:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/E;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lf/E;->a:Lf/D;

    iget-object v1, p0, Lf/C;->f:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/D;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lf/C;->e:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lf/e;

    new-instance v2, Lf/c;

    invoke-direct {v2, v0}, Lf/c;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v4

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->startAdobeEditorActivity()V

    return-object v4

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isRetaking:Z

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->startAdobeEditorActivity()V

    return-object v4

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;I)V

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;

    const/4 v5, 0x2

    invoke-direct {v2, p0, v5}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;I)V

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getSavedSessionState()Lh/q;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v5, Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    new-instance v6, Le/D$$ExternalSyntheticLambda2;

    invoke-direct {v6, v3, p0, v0}, Le/D$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-direct {v5, v6, v0}, Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v5, p0, Lh/q;->d:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    :cond_2
    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanSDKManager:Lh/s;

    invoke-virtual {v0, p0}, Lh/s;->createScanSession(Lh/q;)Lh/C;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanSession:Lh/C;

    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->SAVED_STATE_FILE:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    return-object v4

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processDiscardAnalytics(Z)V

    invoke-static {v3}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearScanSession(Z)V

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->setCanShowBoundaryHint(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->checkInitialState()V

    return-object v4

    :pswitch_4
    check-cast p0, Lf/C;

    iget-object v0, p0, Lf/C;->f:Lf/v;

    iget-object v0, v0, Lf/v;->k:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/E;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lf/E;->a:Lf/D;

    iget-object v1, p0, Lf/C;->f:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/D;)I

    move-result v0

    if-eq v0, v2, :cond_6

    iget-object p0, p0, Lf/C;->e:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lf/e;

    new-instance v2, Lf/c;

    invoke-direct {v2, v0}, Lf/c;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_6
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
