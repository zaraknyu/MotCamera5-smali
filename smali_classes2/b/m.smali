.class public final Lb/m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    iput p3, p0, Lb/m;->$r8$classId:I

    iput-object p1, p0, Lb/m;->a:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    iget p1, p0, Lb/m;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Lh/C;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Lb/o;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb/m;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Lh/C;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lb/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :pswitch_0
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lb/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lb/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :pswitch_2
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Lb/o;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lb/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :pswitch_3
    new-instance p1, Lb/m;

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lb/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lb/m;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "MagicCleanEdgeDetection"

    iget-object p0, p0, Lb/m;->a:Ljava/lang/Object;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p0, Lh/C;

    iget-object p0, p0, Lh/C;->a:Lc/h;

    iget p1, p0, Lc/h;->f:I

    iget-object v0, p0, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/X;

    iput-object v2, v3, Lc/X;->d:Lc/h;

    iget-object v3, v3, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/s1;

    invoke-virtual {v5}, Lc/s1;->a$3()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lc/h;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :goto_1
    iput-boolean v1, p0, Lc/h;->g:Z

    return-object v4

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    sget-object p1, Lh/k;->b:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/f;

    check-cast p0, Landroid/graphics/Bitmap;

    check-cast p1, Lb/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;

    invoke-direct {p1}, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;-><init>()V

    new-instance v0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;

    invoke-direct {v0, p0}, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Lcom/adobe/magic_clean/CameraCleanDocDetectionAndroidShim;->DetectDocType(Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;)Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;->mDocType:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    const-string p1, "mDocType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNone:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-static {p0, v3}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    sget-object p0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNone:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    :goto_3
    sget-object p1, Lh/i;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_7

    const/4 p1, 0x2

    if-eq p0, p1, :cond_6

    const/4 p1, 0x3

    if-eq p0, p1, :cond_5

    sget-object p0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->Failed:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    goto :goto_4

    :cond_5
    sget-object p0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->LowConfidence:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    goto :goto_4

    :cond_6
    sget-object p0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->NotDocument:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    goto :goto_4

    :cond_7
    sget-object p0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->Document:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    sget-object p0, Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;->Failed:Lcom/adobe/scan/sdk/ScanDocumentDetector$DetectionResult;

    :goto_4
    return-object p0

    :pswitch_1
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v4

    :pswitch_2
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object p0, Lb/o;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_5

    :cond_8
    :try_start_3
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_6
    invoke-static {v2}, Lcom/adobe/magic_clean/CameraCleanUtils;->setBasePathToModels(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :goto_7
    invoke-static {p0, v3}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    :goto_8
    return-object v4

    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :try_start_4
    check-cast p0, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    sget-object p1, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeBD:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    invoke-virtual {p0, p1, v1}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;->PreloadMCModel(Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception p0

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/Error;

    invoke-static {p0, v3}, La/l;->a(Ljava/lang/Error;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    sget-object p1, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    const-string p1, "b.o"

    const-string v0, "preloadBdModel failed with exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
