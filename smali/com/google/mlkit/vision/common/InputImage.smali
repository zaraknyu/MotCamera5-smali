.class public final Lcom/google/mlkit/vision/common/InputImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile zzb:Ljava/nio/ByteBuffer;

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int v1, p2, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Image dimension, ByteBuffer size and format don\'t match. Please check if the ByteBuffer is in the decalred format."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzah;->checkArgument(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iput p3, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    if-eqz p4, :cond_1

    const/16 p1, 0x5a

    if-eq p4, p1, :cond_1

    const/16 p1, 0xb4

    if-eq p4, p1, :cond_1

    const/16 p1, 0x10e

    if-ne p4, p1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    const-string p1, "Invalid rotation. Only 0, 90, 180, 270 are supported currently."

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/zzah;->checkArgument(Ljava/lang/String;Z)V

    iput p4, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    return-void
.end method

.method public static fromByteArray([BIII)Lcom/google/mlkit/vision/common/InputImage;
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v5, Lcom/google/mlkit/vision/common/InputImage;

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {v5, v6, v0, v1, v2}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Ljava/nio/ByteBuffer;III)V

    move-object/from16 v6, p0

    array-length v6, v6

    const-class v7, Lkotlin/ranges/RangesKt;

    monitor-enter v7

    const/4 v8, 0x1

    int-to-byte v8, v8

    or-int/lit8 v8, v8, 0x2

    int-to-byte v8, v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    :try_start_0
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const-class v9, Lkotlin/ranges/RangesKt;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v10, Lkotlin/ranges/RangesKt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsr;

    if-nez v10, :cond_0

    new-instance v10, Lcom/google/android/gms/internal/mlkit_common/zzsr;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/google/android/gms/internal/mlkit_common/zzsr;-><init>(I)V

    sput-object v10, Lkotlin/ranges/RangesKt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsr;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    sget-object v10, Lkotlin/ranges/RangesKt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzsr;

    invoke-virtual {v10, v8}, Landroidx/media3/common/BasePlayer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v3

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;->zzbA:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    iget-object v4, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzg:Lcom/google/android/gms/tasks/zzw;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v7, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzk:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v11, v13

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {v15, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gtz v0, :cond_2

    return-object v5

    :cond_2
    :goto_1
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    iput-object v1, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    iput-object v1, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    const v1, 0x7fffffff

    and-int v3, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    and-int v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    and-int v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V

    new-instance v0, Lcom/google/zxing/Result;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/Result;-><init>(IZ)V

    iput-object v1, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/google/zxing/Result;)V

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object v2, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v2, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {v3, v8, v1, v0}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;Lcom/motorola/camera/CameraKpi;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    return-object v5

    :goto_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, v8, 0x1

    if-nez v1, :cond_5

    const-string v1, " enableFirelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, v8, 0x2

    if-nez v1, :cond_6

    const-string v1, " firelogEventType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method
