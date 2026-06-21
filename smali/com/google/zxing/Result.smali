.class public Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;
.implements Lcom/google/firebase/encoders/config/EncoderConfig;
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;
.implements Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;
.implements Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public format:Ljava/lang/Object;

.field public resultPoints:Ljava/lang/Object;

.field public text:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/google/zxing/Result;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    .line 5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;->zza$1:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 9
    new-instance p1, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void

    .line 12
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Lcom/motorola/camera/device/CameraHandlerThread;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraHandlerThread;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 16
    new-instance p1, Lcom/motorola/camera/device/CameraStateManager;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraStateManager;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 17
    new-instance p1, Lcom/google/android/gms/dynamite/zzo;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 18
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/dynamite/zzo;-><init>(IB)V

    .line 19
    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void

    .line 20
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 22
    new-instance p1, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;-><init>(Lcom/google/zxing/Result;)V

    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 6

    const/16 v0, 0xb

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    const/4 v0, -0x1

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt p1, p2, :cond_0

    .line 36
    new-instance v4, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v4, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 37
    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 38
    aput-boolean v3, v1, v3

    .line 39
    aput-boolean v2, v1, v2

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, v4, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 41
    new-instance p2, Landroid/util/Range;

    const/16 v0, 0x163

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x168

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 42
    aput-boolean v3, v1, v3

    .line 43
    aput-boolean v3, v1, v2

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/Result;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    const-string/jumbo v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 52
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawProjectionComputer;

    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawProjectionComputer;)V

    iput-object p2, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 31
    invoke-direct {p0, v0}, Lcom/google/zxing/Result;-><init>(I)V

    .line 32
    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PermissionCallback;Lcom/google/android/play/core/splitinstall/internal/zzcb;Lcom/google/android/play/core/splitinstall/internal/zzcb;Lcom/motorola/camera/SecureDataHelper;)V
    .locals 0

    const/16 p1, 0x9

    iput p1, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mediacodec/ActivePhotoEngine;Landroid/media/AudioRecord;)V
    .locals 2

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 64
    iput-object p2, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lcom/google/zxing/Result;->$r8$classId:I

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 48
    iput-object p3, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 24
    new-instance p1, Lcom/motorola/camera/SecureCamera$1;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    const-string v0, "argumentRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;Ljava/util/List;Lcom/google/zxing/Result;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    const-string v0, "classifierDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 58
    iput-object p3, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lcom/motorola/camera/ui/widgets/gl/Matrices;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    .line 26
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v1, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v2}, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v5, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0}, Lcom/google/zxing/Result;->dumpClients()V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/os/Handler;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/device/callables/CaptureRequestCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Landroid/os/Handler;Z)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Lcom/motorola/camera/mcf/McfParameters;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static openCamera(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Landroid/os/Handler;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/os/Handler;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/device/callables/OpenCameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 6

    const-string v0, "Client not found: "

    sget-object v1, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v2, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    const-string v3, "CameraForegroundServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/google/zxing/Result;->dumpClients()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-gtz v0, :cond_4

    iget-object v0, v1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v0, p0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v5, 0x1a

    invoke-direct {v4, v5, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-static {}, Lcom/motorola/camera/jms/BgJobManager;->getPendingJobs()Ljava/util/HashSet;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v0, v5, v4}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v3}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/google/zxing/Result;->dumpClients()V

    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/os/Handler;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/os/Handler;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v6, 0x6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method


# virtual methods
.method public addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V
    .locals 1

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iget-object v2, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-object v4, p1

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "PRAGMA page_count"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "PRAGMA page_size"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v7

    mul-long/2addr v7, v5

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    iget-wide v5, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxStorageSizeInBytes:J

    cmp-long v5, v7, v5

    if-ltz v5, :cond_0

    const-wide/16 p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "backend_name = ? and priority = ?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->priority:Lcom/google/android/datatransport/Priority;

    invoke-static {v13}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    if-eqz v1, :cond_1

    const-string v7, " and extras = ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v7, " and extras is null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, p1, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v7

    move-object v7, v5

    const-string/jumbo v5, "transport_contexts"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    move-object v6, v7

    goto :goto_1

    :cond_2
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "backend_name"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v6, "priority"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "next_request_ms"

    invoke-virtual {v5, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_4

    const-string v2, "extras"

    invoke-static {v1, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v1, "transport_contexts"

    invoke-virtual {v4, v1, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    :goto_2
    iget v0, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxBlobByteSizePerRow:I

    iget-object v5, v3, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    array-length v6, v5

    const/4 v8, 0x1

    if-gt v6, v0, :cond_5

    move v6, v8

    goto :goto_3

    :cond_5
    move v6, p1

    :goto_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "context_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "transport_name"

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp_ms"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "uptime_ms"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, v3, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    iget-object v1, v1, Lcom/google/android/datatransport/Encoding;->name:Ljava/lang/String;

    const-string/jumbo v2, "payload_encoding"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v9, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "num_attempts"

    invoke-virtual {v9, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "inline"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v6, :cond_6

    move-object p1, v5

    goto :goto_4

    :cond_6
    new-array p1, p1, [B

    :goto_4
    const-string/jumbo v1, "payload"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "events"

    invoke-virtual {v4, p1, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string p1, "event_id"

    if-nez v6, :cond_7

    array-length v3, v5

    int-to-double v9, v3

    int-to-double v11, v0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    :goto_5
    if-gt v8, v3, :cond_7

    add-int/lit8 v6, v8, -0x1

    mul-int/2addr v6, v0

    mul-int v9, v8, v0

    array-length v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v6, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v10, "sequence_num"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "bytes"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "event_payloads"

    invoke-virtual {v4, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "event_metadata"

    invoke-virtual {v4, v0, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_6

    :cond_8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->howThisTypeIsUsed:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->flexibility:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    iget-boolean v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    iget-object v7, v1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v8, v7, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    invoke-direct {v10, v7, v5, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->toDefaultAttributes(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v10

    :cond_1
    iget-object v11, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->classifier:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaElement;

    const-string v12, "Type not found: "

    if-eqz v11, :cond_29

    instance-of v13, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    const-class v14, Ljava/lang/Object;

    const-string v15, "getUpperBounds(...)"

    move/from16 v16, v9

    const-string v9, "getParameters(...)"

    move/from16 v17, v6

    const/16 v18, 0x1

    if-eqz v13, :cond_e

    move-object v13, v11

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    const/16 v19, 0x0

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    if-eqz v6, :cond_d

    if-eqz v17, :cond_4

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->JAVA_LANG_CLASS_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v6, v11}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v6, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->reflectionTypes:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    iget-object v11, v6, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->kClass$delegate:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$Companion;

    sget-object v20, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    move-object/from16 v21, v11

    aget-object v11, v20, v16

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v10

    const-string/jumbo v10, "property"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/compose/ui/res/VectorResources_androidKt;->capitalizeAsciiOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v10

    iget-object v11, v6, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->kotlinReflectScope$delegate:Ljava/lang/Object;

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-object/from16 v21, v7

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {v11, v10, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v7

    instance-of v11, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v11, :cond_2

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_0

    :cond_2
    move-object/from16 v7, v19

    :goto_0
    if-nez v7, :cond_3

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->notFoundClasses:Landroidx/work/WorkQuery;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-direct {v7, v11, v10}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroidx/work/WorkQuery;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v6

    goto/16 :goto_3

    :cond_3
    move-object v6, v7

    goto/16 :goto_3

    :cond_4
    move-object/from16 v21, v7

    move-object/from16 v20, v10

    iget-object v7, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->mapJavaToKotlin$default(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v6

    if-nez v6, :cond_5

    move-object/from16 v6, v19

    goto/16 :goto_3

    :cond_5
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v7

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    if-eq v4, v7, :cond_8

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    if-eq v3, v7, :cond_8

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    instance-of v11, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    if-eqz v11, :cond_6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    goto :goto_1

    :cond_6
    move-object/from16 v7, v19

    :goto_1
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->reflectType:Ljava/lang/reflect/WildcardType;

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v7

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz v7, :cond_7

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v10

    invoke-virtual {v10, v7}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v7, :cond_9

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v7

    if-eqz v7, :cond_9

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v7, v10, :cond_9

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a read-only collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->convertReadOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v6

    :cond_9
    :goto_3
    if-nez v6, :cond_b

    iget-object v6, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->moduleClassResolver:Lcom/motorola/camera/PermissionCallback;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/tasks/zzb;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v13}, Lcom/google/android/gms/tasks/zzb;->resolveClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v6

    goto :goto_4

    :cond_a
    const-string/jumbo v0, "resolver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v19

    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    if-eqz v6, :cond_c

    goto :goto_5

    :cond_c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->reflectType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class type should have a FQ name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_e
    move-object/from16 v21, v7

    move-object/from16 v20, v10

    const/16 v19, 0x0

    instance-of v6, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    if-eqz v6, :cond_28

    iget-object v6, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    invoke-interface {v6, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;->resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    goto :goto_5

    :cond_f
    move-object/from16 v6, v19

    :goto_5
    if-nez v6, :cond_10

    return-object v19

    :cond_10
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    if-ne v4, v7, :cond_12

    :cond_11
    move/from16 v7, v16

    goto :goto_6

    :cond_12
    if-nez v17, :cond_11

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    if-eq v3, v4, :cond_11

    move/from16 v7, v18

    :goto_6
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    goto :goto_7

    :cond_13
    move-object/from16 v3, v19

    :goto_7
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz v7, :cond_14

    move/from16 v3, v18

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :cond_14
    move/from16 v3, v18

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_8

    :cond_15
    move/from16 v3, v16

    :cond_16
    :goto_8
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0xa

    if-eqz v3, :cond_19

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    move-object/from16 v4, v19

    invoke-static {v2, v4, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->hasTypeParameterRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v2

    move-object v13, v5

    move-object v14, v6

    move-object v6, v1

    goto :goto_a

    :cond_17
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iget-object v12, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$$Lambda$0;

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$$Lambda$0;-><init>(Lcom/google/zxing/Result;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;)V

    move-object v6, v1

    move-object v15, v2

    move-object v14, v4

    move-object v13, v5

    invoke-direct {v11, v12, v0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x3b

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;ZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v1

    iget-object v0, v6, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    invoke-static {v15, v1, v0, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawProjectionComputer;->computeProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v2

    :goto_a
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v5, v13

    move-object v6, v14

    const/16 v19, 0x0

    goto :goto_9

    :cond_18
    move-object v0, v6

    :goto_b
    move-object/from16 v10, v20

    goto/16 :goto_16

    :cond_19
    move-object v13, v5

    move-object v0, v6

    move-object v6, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_1b

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v3

    invoke-direct {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    goto :goto_b

    :cond_1b
    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/util/List;)Lkotlin/collections/IndexingIterable;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    move-object v4, v1

    check-cast v4, Lkotlin/collections/IndexingIterator;

    iget-object v5, v4, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v4}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/collections/IndexedValue;

    iget v5, v4, Lkotlin/collections/IndexedValue;->index:I

    iget-object v4, v4, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v9, 0x7

    move/from16 v10, v16

    const/4 v11, 0x0

    invoke-static {v8, v10, v11, v9}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    instance-of v10, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    if-eqz v10, :cond_26

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v10

    iget-object v11, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->reflectType:Ljava/lang/reflect/WildcardType;

    invoke-interface {v11}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_e

    :cond_1c
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_e
    if-eqz v10, :cond_1e

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v12

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v12, v13, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v12

    if-eq v11, v12, :cond_1f

    :cond_1e
    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 v12, v21

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_1f
    :goto_f
    const-string/jumbo v8, "wildcardType"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v8

    if-eqz v8, :cond_25

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    move-object/from16 v12, v21

    const/4 v13, 0x0

    invoke-direct {v8, v12, v4, v13}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    move-object v8, v4

    check-cast v8, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->RXJAVA3_ANNOTATIONS:[Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-object/from16 p2, v1

    array-length v1, v9

    move-object/from16 p3, v2

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    move/from16 v17, v1

    aget-object v1, v9, v2

    move/from16 v18, v2

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v4, v8

    goto :goto_12

    :cond_20
    add-int/lit8 v2, v18, 0x1

    move/from16 v1, v17

    goto :goto_11

    :cond_21
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v9, 0x7

    goto :goto_10

    :cond_22
    move-object/from16 p2, v1

    move-object/from16 p3, v2

    const/4 v4, 0x0

    :goto_12
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v2, 0x7

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v13, v9, v2}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Lcom/google/zxing/Result;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    if-eqz v4, :cond_24

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    goto :goto_13

    :cond_23
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-direct {v4, v2, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Ljava/util/List;I)V

    move-object v2, v4

    :goto_13
    invoke-static {v1, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    :cond_24
    invoke-static {v1, v11, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v1

    goto :goto_15

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nullability annotations on unbounded wildcards aren\'t supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_14
    invoke-static {v5, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v1

    goto :goto_15

    :cond_26
    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 v12, v21

    const/4 v9, 0x0

    const/4 v13, 0x0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v6, v4, v8}, Lcom/google/zxing/Result;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    :goto_15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v21, v12

    move/from16 v16, v13

    goto/16 :goto_d

    :cond_27
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_b

    :goto_16
    invoke-static {v9, v10, v0, v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown classifier kind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object v13, v5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->reflectType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(I)Z
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, [Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    aput-boolean v2, v0, v1

    :cond_0
    const/4 v2, 0x1

    aget-boolean v3, v0, v2

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    aput-boolean v3, v0, v2

    :cond_1
    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-boolean p0, v0, v1

    if-eqz p0, :cond_2

    aput-boolean v1, v0, v1

    :cond_2
    aget-boolean p0, v0, v1

    if-eqz p0, :cond_3

    aget-boolean p0, v0, v2

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public dumpClients()V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clients voting for foreground service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraForegroundServiceManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 9

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->priority:Lcom/google/android/datatransport/Priority;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    const-string v6, "TransportRuntime."

    const-string v7, "SQLiteEventStore"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Storing event with priority="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", name="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for destination "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/google/zxing/Result;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v1, p0, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v3, p0}, Lcom/google/zxing/Result;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    invoke-virtual {p0, v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->schedule(Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/zzf;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;

    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;)V

    return-object v2

    :pswitch_0
    new-instance v0, Lcom/google/mlkit/common/internal/zzc;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    new-instance v1, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/AppFeatures;

    invoke-virtual {v2}, Lcom/motorola/camera/AppFeatures;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    iget-object v3, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/Fsm;->get()Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Landroidx/work/WorkQuery;

    invoke-virtual {p0}, Landroidx/work/WorkQuery;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    new-instance v3, Lcom/google/android/datatransport/runtime/TransportRuntime;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/datatransport/runtime/TransportRuntime;-><init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getConfiguration()[B
    .locals 7

    const-string/jumbo v0, "readMcfConfig dur:"

    const-string v1, "MCF_OVERRIDE_CONFIG:"

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "mcf.override.config"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sget-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->MCF_OVERRIDE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v4}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v3, v5

    :cond_2
    or-int/2addr v3, v2

    const-string v2, "McfJsonConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getPlatform()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "McfJsonConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MCF configuration is invalid"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    return-object p0
.end method

.method public declared-synchronized getPlatform()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTuningConfiguration()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/shared/McfUtil;->readTuningMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public handleError(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "exception in codecLooper"

    const-string v0, "ActivePhotoEngine"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "ActivePhotoEngine"

    const-string p1, "handleFormatChanged with invalid mimetype"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v2, "video/avc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string/jumbo v2, "video/hevc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iput-object p1, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoFormat:Landroid/media/MediaFormat;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iput-object p1, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mAudioFormat:Landroid/media/MediaFormat;

    :goto_2
    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mMuxerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mediacodec/MuxerWriter;

    iget-object v4, v2, Lcom/motorola/camera/mediacodec/MuxerWriter;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v5, Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MuxerWriter$Flag;

    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    goto :goto_4

    :cond_6
    iput-object p1, v2, Lcom/motorola/camera/mediacodec/MuxerWriter;->mVideoFormat:Landroid/media/MediaFormat;

    goto :goto_4

    :cond_7
    iput-object p1, v2, Lcom/motorola/camera/mediacodec/MuxerWriter;->mAudioFormat:Landroid/media/MediaFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    :try_start_1
    iget-object v2, v2, Lcom/motorola/camera/mediacodec/MuxerWriter;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "MuxerWriter"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 12

    iget-object v0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "ActivePhotoEngine"

    if-nez p1, :cond_1

    const-string p0, "Expecting valid buffer to fill"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget v4, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mAudioBufferSize:I

    invoke-virtual {v1, p1, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v4

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v6, 0x0

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v4, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v7, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const-wide/32 v8, 0xf4240

    if-nez v7, :cond_3

    new-instance v7, Landroid/media/AudioTimestamp;

    invoke-direct {v7}, Landroid/media/AudioTimestamp;-><init>()V

    invoke-virtual {v1, v7, v6}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Unable to get timestamp - error code:"

    invoke-static {p0, v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_2
    iget-wide v1, v7, Landroid/media/AudioTimestamp;->framePosition:J

    mul-long/2addr v1, v8

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v6, v3

    div-long/2addr v1, v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v10, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mTimestampOffset:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    int-to-long v1, v1

    const-wide/16 v6, 0x2

    mul-long/2addr v1, v6

    int-to-long v3, v4

    div-long/2addr v3, v1

    mul-long/2addr v3, v8

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    new-instance v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v0}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iput-object v5, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method public handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v3, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v5, v5, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->RUNNING:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v3, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/4 v7, 0x0

    invoke-direct {v3, v5, v2, v6, v7}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;ILandroid/media/MediaCodec;)V

    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioRecord;

    const/4 v5, 0x1

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    sget-object v7, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mBufferLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v8, v8, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mMuxerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/mediacodec/MuxerWriter;

    invoke-virtual {v9, v3, v2}, Lcom/motorola/camera/mediacodec/MuxerWriter;->addBufferChunk(Lcom/motorola/camera/mediacodec/BufferChunk;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioRecord;

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v2, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v2, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mKeyFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mDefaultDurations:J

    sub-long v12, v8, v10

    invoke-virtual {v2, v12, v13}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->findNearestKeyFrame(J)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v3

    iget-object v12, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/mediacodec/BufferChunk;

    if-eqz v3, :cond_7

    if-ne v14, v3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v15, v14, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    move/from16 v16, v5

    iget-wide v5, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v5, v8, v5

    cmp-long v5, v5, v10

    if-lez v5, :cond_8

    invoke-virtual {v12, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v14, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    move/from16 v5, v16

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mKeyFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    move/from16 v5, v16

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_5
    move/from16 v16, v5

    :cond_8
    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget v2, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mFrameCount:I

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "request-sync"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v2, v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mAudioBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v2, v3, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v5, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mAudioBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v9, v8, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v9, v2, v9

    iget-wide v11, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mDefaultDurations:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_a

    invoke-virtual {v5, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    :goto_7
    monitor-exit v7

    goto :goto_9

    :goto_8
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_b
    :goto_9
    monitor-exit v4

    goto :goto_b

    :goto_a
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    :goto_b
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_d

    iget v1, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->index:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_d
    return-void
.end method

.method public isEntering(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    sget-object v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEntering(Ljava/util/Collection;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    sget-object v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExiting(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    sget-object v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExiting(Ljava/util/Collection;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    sget-object v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReentering(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    sget-object v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;->REENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public processMediaVolumes()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v1, "mediaVolumes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/Result;->sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/Result;->sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    return-void
.end method

.method public registerActionReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.motorola.camera5.DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public bridge synthetic registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "PREVIOUS_VALUE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    const-string v1, "mediaVolume"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const-string v2, "LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SDCARD_MOUNTED"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "MEDIA_VOLUME"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAtlasDpi:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAtlasMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "is null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAtlas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreviewFitTransform{rotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeEvent{state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_3
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v0, v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :sswitch_4
    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xb -> :sswitch_3
        0xe -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public transformArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    const-string v2, "arrayType"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;->componentType:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;->reflectType:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v4

    :goto_2
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    const/4 v6, 0x1

    invoke-direct {v5, v0, p1, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    if-eqz v3, :cond_4

    iget-object p0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p3

    filled-new-array {p3, v5}, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p3

    invoke-direct {p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/res/PainterResources_androidKt;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz p2, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v0, 0x6

    invoke-static {p1, p2, v4, v0}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/zxing/Result;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_3

    :cond_5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_3
    iget-object p2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p2

    invoke-virtual {p2, p1, p0, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p1, p2, p0, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    iget-object p2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p2

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p2, p3, p0, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0
.end method

.method public transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 9

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;->reflectType:Ljava/lang/Class;

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getUnitType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    iget-boolean v0, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    if-nez v0, :cond_3

    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->howThisTypeIsUsed:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    if-eq v0, v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v0

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->reflectType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/zxing/Result;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;ZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/zxing/Result;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    if-nez p2, :cond_6

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_UPPER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;ZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/google/zxing/Result;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-nez p0, :cond_7

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz v0, :cond_8

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-direct {p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    return-object p1

    :cond_8
    invoke-static {p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    if-eqz v1, :cond_a

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    invoke-virtual {p0, p1, p2, v3}, Lcom/google/zxing/Result;->transformArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    if-eqz v1, :cond_c

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/Result;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getDefaultBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :cond_c
    if-nez p1, :cond_d

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getDefaultBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzb(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzbz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzb(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzbz;

    move-result-object v1

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzb(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzbz;

    move-result-object p0

    new-instance v2, Lcom/google/android/play/core/splitinstall/zzl;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/play/core/splitinstall/zzl;-><init>(Lcom/google/android/play/core/splitinstall/internal/zzbz;Lcom/google/android/play/core/splitinstall/internal/zzbz;Lcom/google/android/play/core/splitinstall/internal/zzbz;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/zzs;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/SecureDataHelper;

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzb(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzbz;

    new-instance p0, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-direct {p0, v0}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;-><init>(Lcom/google/android/play/core/splitinstall/zzs;)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {v1}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/appupdate/zzc;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PermissionCallback;

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzi;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    new-instance v2, Lcom/google/android/play/core/appupdate/zzg;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/play/core/appupdate/zzc;Landroid/content/Context;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
