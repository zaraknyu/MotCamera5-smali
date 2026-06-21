.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    iget-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object p1, p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lh/C;->getCurrentPageIndex()I

    move-result p1

    iput v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$editingBottomBar$1$1$1;->label:I

    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v4

    invoke-virtual {v4, p1}, Lh/C;->getPage(I)Lh/F;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    iget-object v6, v4, Lh/F;->b:Lh/C;

    iget-object v7, v6, Lh/C;->b:Ljava/util/LinkedHashMap;

    iget-object v4, v4, Lh/F;->a:Lc/X;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v6, Lh/C;->c:Le/J0;

    iget-object v7, v4, Lc/X;->d:Lc/h;

    if-eqz v7, :cond_b

    iget-object v8, v7, Lc/h;->e:Ljava/util/HashMap;

    iget-object v9, v7, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget v10, v7, Lc/h;->f:I

    if-lez v10, :cond_2

    move v1, v5

    goto :goto_3

    :cond_2
    iget-object v10, v4, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/s1;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lc/s1;->a$3()V

    goto :goto_0

    :cond_3
    iput-object v1, v4, Lc/X;->d:Lc/h;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lc/X;

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v11, v1, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v5

    :goto_2
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_5
    if-ge v1, v4, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    sget-object v1, Lc/h;->j:Lc/e;

    invoke-static {v7, v3, v5}, Lc/e;->a(Lc/h;ZZ)V

    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    iput-boolean v5, v7, Lc/h;->g:Z

    :cond_a
    iget-object v1, v6, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Lc/h;->c()Lf/D;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_b
    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "instrumentationData was empty when removing index: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", returning"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->retakeCount:I

    add-int/2addr v1, v3

    sput v1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->retakeCount:I

    :goto_6
    sput-boolean v3, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isRetaking:Z

    sput p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->retakeIndex:I

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "removeCapture "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " out of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AdobeFileManager"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v1

    invoke-virtual {v1}, Lh/C;->getPageCount()I

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getThumbnail()Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->clear()V

    goto :goto_8

    :cond_d
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v1

    invoke-virtual {v1}, Lh/C;->getPageCount()I

    move-result v1

    if-ne p1, v1, :cond_e

    move v5, v3

    :cond_e
    if-eqz v5, :cond_f

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getThumbnail()Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    const-string v1, "Orientation"

    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/utility/ExifUtility;->getOrientationFromExif(I)I

    move-result p0

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v4

    invoke-virtual {v4}, Lh/C;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lh/C;->getPage(I)Lh/F;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->load(ILh/F;)V

    :cond_f
    :goto_8
    if-ne v2, v0, :cond_10

    return-object v0

    :cond_10
    return-object v2

    :cond_11
    const-string p0, "scanSession"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
