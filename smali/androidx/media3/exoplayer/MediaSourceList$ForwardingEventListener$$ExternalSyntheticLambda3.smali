.class public final synthetic Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    iput p5, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;ILjava/util/ArrayList;Lkotlin/text/Regex$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:I

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;ILandroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput p4, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:I

    iput-object p5, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget v3, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:I

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    iget-object v5, v2, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const-string v6, "getCurrentList(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v3, v2, v0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Lkotlin/text/Regex$$ExternalSyntheticLambda0;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/CameraData;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    iget v4, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:I

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/PostViewJsonData;->isPostViewFrameSelectorEnable()Z

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/utility/PostViewJsonData;->isPostViewFrameFinalData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez v2, :cond_1

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->cameraDataMap:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/CameraData;

    :cond_1
    const-string v0, "THUMB_PATH"

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBitmapFromBuffer()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBuffer(Landroid/graphics/Bitmap;)Ljava/nio/Buffer;

    move-result-object v9

    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object v8, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Bitmap;

    iget-object v9, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/nio/Buffer;

    if-eqz v2, :cond_3

    iget-object v10, v2, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v10, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "null cannot be cast to non-null type java.nio.ByteBuffer"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getSize()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v9

    if-eqz v9, :cond_2

    move v11, v7

    goto :goto_1

    :cond_2
    move v11, v6

    :goto_1
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v14

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v11 .. v18}, Lcom/motorola/camera/saving/SaveImageService;->storeThumbnail(ZJJ[BLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "THUMB_WIDTH"

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v6, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    const-string v0, "THUMB_HEIGHT"

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v5, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v2, v1, v8, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->handleCameraData(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    if-eqz v2, :cond_4

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->displayCliPreview(Lcom/motorola/camera/CameraData;)V

    :cond_4
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->cameraDataMap:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->cameraDataMap:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/motorola/camera/CameraData;

    invoke-direct {v6, v2}, Lcom/motorola/camera/CameraData;-><init>(Lcom/motorola/camera/CameraData;)V

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter v5

    :try_start_2
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBitmapFromBuffer()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4, v7}, Lcom/motorola/camera/Util;->createMicroKindThumbnail(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    const/16 v4, 0xc

    invoke-static {v3, v2, v0, v1, v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->handleCameraData$default(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_6
    const-string v0, "THUMB_PATH"

    iget-object v1, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getThumbnailsAndBuffer(Landroid/content/Context;)Lkotlin/Triple;

    move-result-object v1

    iget-object v4, v1, Lkotlin/Triple;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v8, v1, Lkotlin/Triple;->second:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Bitmap;

    iget-object v1, v1, Lkotlin/Triple;->third:Ljava/lang/Object;

    check-cast v1, Ljava/nio/Buffer;

    if-eqz v2, :cond_8

    iget-object v9, v2, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v9, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "null cannot be cast to non-null type java.nio.ByteBuffer"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v5

    if-eqz v5, :cond_7

    move v10, v7

    goto :goto_2

    :cond_7
    move v10, v6

    :goto_2
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v13

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v10 .. v17}, Lcom/motorola/camera/saving/SaveImageService;->storeThumbnail(ZJJ[BLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "THUMB_WIDTH"

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v5, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    const-string v0, "THUMB_HEIGHT"

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    :cond_8
    const/16 v0, 0x8

    invoke-static {v3, v2, v4, v8, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->handleCameraData$default(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    if-eqz v2, :cond_9

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->displayCliPreview(Lcom/motorola/camera/CameraData;)V

    :cond_9
    :goto_3
    return-void

    :pswitch_1
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v9, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$4:I

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
