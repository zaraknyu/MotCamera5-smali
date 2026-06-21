.class public Lcom/motorola/camera/CameraKpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates;


# instance fields
.field public final synthetic $r8$classId:I

.field public mCameraKpis:Ljava/lang/Object;

.field public mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    .line 10
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 12
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    .line 13
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    .line 18
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Lcom/google/mlkit/common/internal/zzc;

    const/4 v0, 0x3

    .line 20
    invoke-direct {p1, v0}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    .line 21
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 22
    new-instance p1, Landroidx/collection/LruCache;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    .line 23
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance p1, Lcom/google/android/gms/tasks/zza;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/tasks/zza;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 25
    new-instance p1, Lcom/google/android/gms/tasks/zza;

    invoke-direct {p1, v0}, Lcom/google/android/gms/tasks/zza;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    .line 26
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 28
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x12 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    .line 45
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 46
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "isSecureLockEnforcedForUid"

    .line 47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 48
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    const-string p1, "MotoSecureService"

    const-string p2, "Unable to find moto secure method, will always return false"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 50
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void

    .line 51
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 72
    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 68
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation$Bounds;->getLowerBound()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation$Bounds;->getUpperBound()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase$closeBarrier$1;)V
    .locals 1

    const/16 p1, 0xf

    iput p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/Processor;Landroidx/transition/TransitionValuesMaps;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    const-string/jumbo v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 58
    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 34
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x2

    .line 35
    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;I)V

    .line 36
    iput-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/RegularImmutableList;[I)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 82
    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/Result;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    const/16 v0, 0x1b

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 86
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    .line 87
    invoke-virtual {v0, p1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 88
    invoke-virtual {v1, p2}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;)V
    .locals 1

    const/16 p1, 0x17

    iput p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance p1, Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    const/16 p1, 0x10

    iput p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 3
    iput p3, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    const/16 v0, 0x1d

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 64
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public static logKeyProgress(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lkp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraKpiTag"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zza;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zza;->add(Landroidx/compose/ui/node/LayoutNode;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zza;->add(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/TreeSet;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zza;->add(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    .line 2
    invoke-static {p2, v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addState(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public block$room_runtime_release()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V
    .locals 3

    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 6

    monitor-enter p0

    .line 3
    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5
    sget-boolean p3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p3, :cond_1

    const-string p3, "CameraKpiTag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, start: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 7
    sget-boolean p3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p3, :cond_1

    const-string p3, "CameraKpiTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraKpi$CameraKpiListener;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2, p4}, Lcom/motorola/camera/CameraKpi$CameraKpiListener;->onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 11
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, [Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/AacUtil;->consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, [Landroidx/media3/extractor/TrackOutput;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget v3, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid closed caption MIME type provided: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->checkArgument(Ljava/lang/String;Z)V

    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    iget-object v7, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v7, "video/mp2t"

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget v5, v4, Landroidx/media3/common/Format;->selectionFlags:I

    iput v5, v6, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iget-object v5, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iget v5, v4, Landroidx/media3/common/Format;->accessibilityChannel:I

    iput v5, v6, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    invoke-static {v6, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized dispatchIfRTBokehInHal(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public endKpiLogs(Ljava/lang/Long;)V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraPreview"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 4
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V

    goto :goto_0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2, p2, v5}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v2

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    return-void
.end method

.method public ensureSize(I)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, [I

    array-length p1, v0

    array-length v0, p0

    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    return-void
.end method

.method public getBokehLevel()I
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const/4 v0, 0x1

    const-string v1, "SELECT long_value FROM Preference where `key`=?"

    invoke-static {v0, v1}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-object p0
.end method

.method public getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    iput p1, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    iput p2, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    iput-object p3, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    iput-object p4, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    iput p5, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    iput p6, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    iput p7, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public insertPreference(Landroidx/work/impl/model/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-virtual {p0, p1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
.end method

.method public isNotEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zza;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public isPortraitBokehSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehBarSupported(Z)Z

    move-result p0

    return p0
.end method

.method public isRecordRepeating()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public needFaceDetect()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result p0

    return p0
.end method

.method public offsetForAddition(II)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->ensureSize(I)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public offsetForRemoval(II)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->ensureSize(I)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public onBokehLevelChanged(I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BOKEH_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraKpi;->dispatchIfRTBokehInHal(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-void
.end method

.method public onBokehLevelStopChanged()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BOKEH_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->dispatchIfRTBokehInHal(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/room/concurrent/FileLock;

    iget-object p1, p1, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v4, v1, :cond_1

    move-object v2, v3

    move v1, v4

    goto :goto_0

    :cond_2
    move-object v2, v0

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    if-eqz v1, :cond_7

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v1

    iget v2, v2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v2, v2

    add-int/2addr v2, v1

    const/16 v1, 0x1c20

    if-le v2, v1, :cond_6

    goto :goto_2

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :goto_2
    :try_start_1
    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraKpi;->updateMcfRoi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BOKEH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onSingleShot(Lcom/google/zxing/Result;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v0, "LEVEL_SETTINGS"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    new-instance v2, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->access$001(Landroidx/cardview/widget/CardView;IIII)V

    return-void
.end method

.method public setupPortraitBokeh()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v2}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aget v4, v2, v3

    if-ge v4, v1, :cond_1

    :cond_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehLevelError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    :cond_1
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    if-eqz p0, :cond_3

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_3
    aget p0, v2, v3

    int-to-double v5, p0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget p0, v2, v3

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMinLevel:I

    iput p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMaxLevel:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->updateIconsVisibility$1$1()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    monitor-enter v0

    :try_start_9
    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehLevelError:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0
.end method

.method public startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopWork(Landroidx/work/impl/StartStopToken;I)V
    .locals 3

    const-string/jumbo v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/transition/TransitionValuesMaps;

    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/Processor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionValuesMaps;->executeOnTaskThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/CameraKpi;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreviewHolder{mViewSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds{lower="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/core/graphics/Insets;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x14 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public unblock$room_runtime_release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Unbalanced call to unblock() detected."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateMcfRoi()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v2, v3, v0}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v3, v0}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public videoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
