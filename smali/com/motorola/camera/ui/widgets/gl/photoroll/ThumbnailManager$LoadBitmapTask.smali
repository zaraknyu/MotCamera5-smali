.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# instance fields
.field public final mCameraData:Lcom/motorola/camera/CameraData;

.field public final mThumbnailList:Ljava/util/Set;

.field public final mThumbnailManager:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;)V
    .locals 1

    invoke-direct {p0, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p3, Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {p3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailManager:Ljava/lang/ref/WeakReference;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData$1()Lcom/motorola/camera/CameraData;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    return-void
.end method


# virtual methods
.method public final done()V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    const-string v1, "ThumbnailManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    if-eqz v3, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    monitor-enter v3

    :try_start_1
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_4

    :cond_2
    :try_start_2
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    :goto_1
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/Util;->setupGalleryWithCustomAnimation()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, p0, v0, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_5
    iget-object p0, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_6
    :goto_4
    return-void
.end method
