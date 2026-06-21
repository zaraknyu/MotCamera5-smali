.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;


# instance fields
.field public final mLargeKindBitmapTaskMap:Ljava/util/HashMap;

.field public final mLoadBitmapTaskMap:Ljava/util/HashMap;

.field public final mLoadThumbnailExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mUpdateLargeKindBitmapExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLargeKindBitmapTaskMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadThumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mUpdateLargeKindBitmapExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final declared-synchronized loadThumbnail(Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData$1()Lcom/motorola/camera/CameraData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    if-nez v3, :cond_0

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, p0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V

    iget-object p0, v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mLoadBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v5, p0

    goto :goto_0

    :cond_0
    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    iget-object p0, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {p0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLargeKindBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;

    if-nez p0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const-string p1, ".dng"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    :goto_2
    if-nez p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/Util;->setupGalleryWithCustomAnimation()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;

    invoke-direct {p0, v5, v6, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;)V

    iget-object p1, v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLargeKindBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;->mUpdateLargeKindBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {p0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    monitor-exit v5

    return-void

    :goto_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
