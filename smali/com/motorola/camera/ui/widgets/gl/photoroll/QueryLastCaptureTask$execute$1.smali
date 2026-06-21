.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, v6, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->buildCameraData(Landroid/database/Cursor;Landroid/net/Uri;I)Lcom/motorola/camera/CameraData;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    move-object v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v7, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    goto :goto_2

    :cond_0
    move-object v6, v5

    move-object v7, v6

    :goto_0
    :try_start_2
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v7

    invoke-virtual {v2, v7, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->buildCameraData(Landroid/database/Cursor;Landroid/net/Uri;I)Lcom/motorola/camera/CameraData;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, v7

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v18, v7

    move-object v7, v6

    move-object/from16 v6, v18

    goto :goto_2

    :cond_1
    move-object v0, v5

    :goto_1
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_3
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->eventListener:Ljava/lang/ref/WeakReference;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/EventListener;

    if-eqz v8, :cond_2

    new-instance v9, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v9, v10, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v8, v9}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v5

    move-object v6, v7

    :cond_4
    :goto_3
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v9

    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v11

    goto :goto_4

    :cond_5
    move-wide v9, v7

    move-wide v11, v9

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v13

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v15

    goto :goto_5

    :cond_6
    move-wide v13, v7

    move-wide v15, v13

    :goto_5
    if-eqz v6, :cond_e

    if-eqz v0, :cond_e

    cmp-long v4, v9, v7

    if-eqz v4, :cond_7

    cmp-long v17, v13, v7

    if-nez v17, :cond_8

    :cond_7
    cmp-long v17, v11, v15

    if-gtz v17, :cond_d

    :cond_8
    if-eqz v4, :cond_9

    cmp-long v17, v13, v7

    if-eqz v17, :cond_9

    cmp-long v17, v9, v13

    if-lez v17, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v4, :cond_a

    cmp-long v6, v13, v7

    if-nez v6, :cond_b

    :cond_a
    cmp-long v6, v11, v15

    if-ltz v6, :cond_c

    :cond_b
    if-eqz v4, :cond_10

    cmp-long v4, v13, v7

    if-eqz v4, :cond_10

    cmp-long v4, v9, v13

    if-gez v4, :cond_10

    :cond_c
    :goto_6
    move-object v5, v0

    goto :goto_8

    :cond_d
    :goto_7
    move-object v5, v6

    goto :goto_8

    :cond_e
    if-eqz v6, :cond_f

    goto :goto_7

    :cond_f
    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    :goto_8
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_9

    :cond_11
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->lastCaptureHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz v0, :cond_12

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v5, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask$1(Ljava/lang/Runnable;)V

    :cond_12
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_a
    if-eqz v5, :cond_13

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v0
.end method
