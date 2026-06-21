.class public final Lcom/motorola/camera/storage/MediaVolumesHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final clients:Landroid/util/ArraySet;

.field public static final freeBytesMap:Ljava/util/Map;

.field public static final freeBytesUpdatedListeners:Landroid/util/ArraySet;

.field public static volatile isFreeBytesUpdated:Z

.field public static final mediaBroadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public static volatile mediaVolumes:Ljava/util/Set;

.field public static final mediaVolumesChangedListeners:Landroid/util/ArraySet;

.field public static final workerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->freeBytesMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumesChangedListeners:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->freeBytesUpdatedListeners:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaVolumesHolder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    invoke-direct {v0}, Lcom/motorola/camera/SecureCamera$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaBroadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method

.method public static final access$refreshMediaVolumes()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "toString(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    invoke-direct {v4, v2, v3, v5}, Lcom/motorola/camera/storage/MediaVolume;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;-><init>(Lcom/motorola/camera/storage/MediaVolume;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v2, "mediaVolumes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    sget-object v3, Lcom/motorola/camera/storage/MediaVolumesHolder;->freeBytesMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public static final access$updateFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)V
    .locals 7

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaVolume;->getStorageVolumeUuid()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "getInstance(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/StorageStatsManager;

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/util/UUID;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_2

    :catch_1
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/storage"

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaVolume;->getStorageVolumeUuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-wide v3, v1

    :goto_2
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const-string v0, "Negative"

    goto/16 :goto_3

    :cond_2
    cmp-long v0, v1, v3

    const-wide/16 v1, 0x400

    if-gtz v0, :cond_3

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    cmp-long v0, v1, v3

    const-wide/32 v1, 0x100000

    const-string v6, "%.2f"

    if-gtz v0, :cond_4

    cmp-long v0, v3, v1

    if-gez v0, :cond_4

    long-to-float v0, v3

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    cmp-long v0, v1, v3

    const-wide/32 v1, 0x40000000

    if-gtz v0, :cond_5

    cmp-long v0, v3, v1

    if-gez v0, :cond_5

    long-to-float v0, v3

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    cmp-long v0, v1, v3

    const-wide v1, 0x10000000000L

    if-gtz v0, :cond_6

    cmp-long v0, v3, v1

    if-gez v0, :cond_6

    long-to-float v0, v3

    const/high16 v1, 0x4e800000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    cmp-long v0, v1, v3

    if-gtz v0, :cond_7

    const-wide/high16 v0, 0x4000000000000L

    cmp-long v0, v3, v0

    if-gez v0, :cond_7

    long-to-float v0, v3

    const/high16 v1, 0x53800000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v0, "Bigger than 1 PB"

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFreeBytes("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaVolumesHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->freeBytesMap:Ljava/util/Map;

    const-string v1, "freeBytesMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;-><init>(Lcom/motorola/camera/storage/MediaVolume;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sput-boolean v5, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    return-void
.end method

.method public static getClientKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-object v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->freeBytesMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getOrDefault(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final declared-synchronized registerClient(Ljava/lang/Object;)V
    .locals 3

    const-class v0, Lcom/motorola/camera/storage/MediaVolumesHolder;

    monitor-enter v0

    :try_start_0
    const-string v1, "client"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getClientKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->registerMediaBroadcastReceiver()V

    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static registerMediaBroadcastReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaBroadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    const/16 v3, 0x18

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public static final declared-synchronized unregisterClient(Ljava/lang/Object;)V
    .locals 3

    const-class v0, Lcom/motorola/camera/storage/MediaVolumesHolder;

    monitor-enter v0

    :try_start_0
    const-string v1, "client"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getClientKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaBroadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {p0, v1}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
