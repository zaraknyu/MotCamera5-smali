.class public final Lcom/tinder/StateMachine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;
.implements Landroidx/sqlite/SQLiteDriver;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# static fields
.field public static snackbarManager:Lcom/tinder/StateMachine;


# instance fields
.field public final synthetic $r8$classId:I

.field public graph:Ljava/lang/Object;

.field public stateRef:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/ref/Reference;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 31
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void

    .line 32
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 33
    new-array v0, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 34
    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void

    .line 35
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 40
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void

    .line 42
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 44
    new-instance p1, Landroid/os/Handler;

    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/CameraIntentReceiver$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/CameraIntentReceiver$1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void

    .line 46
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 48
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void

    .line 49
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void

    .line 52
    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xc -> :sswitch_4
        0xe -> :sswitch_3
        0x16 -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    iput-object p2, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    iput-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0x15

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    const-string v1, "mlkit:vision"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/common/internal/service/zao;

    .line 7
    sget-object v2, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/tinder/StateMachine;

    sget-object v3, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 8
    iput-object v1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 56
    iput-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/work/WorkQuery;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 63
    sget-object p1, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    .line 64
    new-instance p1, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {p1}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;)V
    .locals 2

    const/16 v0, 0xd

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 72
    new-instance p1, Landroidx/media3/extractor/VorbisBitArray;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 73
    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    .line 74
    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "actual"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/StartStopTokensImpl;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 61
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 25
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;I)V

    .line 27
    iput-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/RegularImmutableList;[I)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/tinder/StateMachine$Graph;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    iget-object p1, p1, Lcom/tinder/StateMachine$Graph;->initialState:Ljava/lang/Object;

    .line 19
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 3
    iput p3, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/signin/zaa;Lokio/Timeout;)V
    .locals 0

    const/16 p3, 0x13

    iput p3, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x14

    iput v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 14
    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move-object p2, p1

    :cond_2
    iput-object p2, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    return-void

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tag \"%s\" is longer than the %d character maximum"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSpanGroupIndex(II)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v1, p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v2, v4

    if-le v2, p1, :cond_3

    add-int/2addr v3, v4

    :cond_3
    return v3
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/tinder/StateMachine;
    .locals 12

    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lokio/ByteString;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_7

    aget-object v4, p0, v3

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v6, 0x22

    invoke-virtual {v1, v6}, Lokio/Buffer;->writeByte(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v2

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x80

    if-ge v10, v11, :cond_0

    aget-object v10, v5, v10

    if-nez v10, :cond_2

    goto :goto_3

    :cond_0
    const/16 v11, 0x2028

    if-ne v10, v11, :cond_1

    const-string v10, "\\u2028"

    goto :goto_2

    :cond_1
    const/16 v11, 0x2029

    if-ne v10, v11, :cond_4

    const-string v10, "\\u2029"

    :cond_2
    :goto_2
    if-ge v9, v8, :cond_3

    invoke-virtual {v1, v9, v8, v4}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v2, v9, v10}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    add-int/lit8 v9, v8, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    if-ge v9, v7, :cond_6

    invoke-virtual {v1, v9, v7, v4}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    :cond_6
    invoke-virtual {v1, v6}, Lokio/Buffer;->writeByte(I)V

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    new-instance v4, Lokio/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-wide v5, v1, Lokio/Buffer;->size:J

    invoke-virtual {v1, v5, v6}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {v4, v5}, Lokio/ByteString;-><init>([B)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    new-instance v1, Lcom/tinder/StateMachine;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v0

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0, v0}, Lcom/tinder/StateMachine;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized batchDraw([F[F)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    if-eqz v6, :cond_1

    iget-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPreDraw()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v7, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    :goto_2
    if-ge v1, v5, :cond_3

    iget-object v3, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPostDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clearDrawList()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v2, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object v2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/ts/TsExtractor;

    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/VorbisBitArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_4

    iget-object v6, p0, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    invoke-virtual {p1, v4, v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v7, 0xd

    if-nez v6, :cond_2

    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v7, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v8, Landroidx/media3/common/util/GlProgram;

    invoke-direct {v8, v0, v6}, Landroidx/media3/common/util/GlProgram;-><init>(Landroidx/media3/extractor/ts/TsExtractor;I)V

    invoke-direct {v7, v8}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public contains(Landroidx/work/impl/model/WorkGenerationalId;)Z
    .locals 1

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    iget-object p0, p0, Landroidx/work/impl/StartStopTokensImpl;->runs:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public disabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3

    monitor-enter p1

    monitor-exit p1

    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/tinder/StateMachine;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;
    .locals 3

    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Lcom/tinder/StateMachine$Graph;

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph;->stateDefinitions:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tinder/StateMachine$Matcher;

    invoke-virtual {v2, p1}, Lcom/tinder/StateMachine$Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tinder/StateMachine$Graph$State;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tinder/StateMachine$Graph$State;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDependentWorkIds(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const/4 v0, 0x1

    const-string v1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    invoke-static {v0, v1}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public declared-synchronized getDrawList()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSlotsToRetain(Landroidx/collection/Values;)V
    .locals 6

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {v0}, Landroidx/collection/MutableObjectIntMap;->clear()V

    invoke-virtual {p1}, Landroidx/collection/Values;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v5, v0, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v4, v5, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v2}, Landroidx/collection/Values;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized getSnapshot()Ljava/util/Map;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;
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

.method public getTransition(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_common/zzit;)Lcom/tinder/StateMachine$Transition;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;

    move-result-object p0

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State;->transitions:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tinder/StateMachine$Matcher;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, p2}, Lcom/tinder/StateMachine$Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    iget-object v0, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    new-instance v1, Lcom/tinder/StateMachine$Transition$Valid;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/tinder/StateMachine$Transition$Valid;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_common/zzit;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/tinder/StateMachine$Transition$Invalid;

    invoke-direct {p0, p1, p2}, Lcom/tinder/StateMachine$Transition$Invalid;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_common/zzit;)V

    return-object p0
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method

.method public invalidateSpanIndexCache()V
    .locals 0

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public isTrustedApplication(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "); do not trust"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string v4, "TrustedPartners"

    if-eqz v1, :cond_1

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "null or empty package name; do not trust"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_6

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    const-string p1, "SHA1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/provider/photos/HexConvert;->HEX_DIGITS_ARRAY:[C

    if-nez p1, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    move v1, v3

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-byte v2, p1, v1

    and-int/lit16 v5, v2, 0xff

    mul-int/lit8 v6, v1, 0x2

    sget-object v7, Lcom/motorola/camera/provider/photos/HexConvert;->HEX_DIGITS_ARRAY:[C

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v7, v5

    aput-char v5, v0, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v7, v2

    aput-char v2, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_1
    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x6

    invoke-static {v4, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo p0, "unable to compute hash using SHA1; do not trust"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    :goto_2
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " signatures found for package ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3

    :catch_1
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "package not found ("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v3
.end method

.method public isTrustedAuthority(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageManager;

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x5

    const-string v0, "TrustedPartners"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "no provider found for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; do not trust"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->isTrustedApplication(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    iget-object p2, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    invoke-direct {v2, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-static {p2, v0, v1, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 3

    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroidx/work/WorkQuery;

    iget-object v1, v0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Landroidx/work/WorkQuery;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)V

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$7;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)V

    :cond_2
    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateBackInvokedCallbackState()V

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/work/WorkQuery;

    iget-object v0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p1

    iget-object v1, p0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/appcompat/view/menu/MenuWrapperICS;

    iget-object p0, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    move-object v3, p2

    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v1, p2, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 3

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabk;

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/room/ObservedTableVersions;

    iget v1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    if-nez v1, :cond_0

    iget-object p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$8;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/core/provider/CallbackWrapper$2;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, p0}, Landroidx/core/provider/CallbackWrapper$2;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 7

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomConnectionManager;

    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v2, Landroidx/room/DatabaseConfiguration;

    iget-object v2, v2, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Landroidx/room/concurrent/ExclusiveLock;

    iget-boolean v3, v0, Landroidx/room/RoomConnectionManager;->isConfigured:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    invoke-direct {v2, p1, v1}, Landroidx/room/concurrent/ExclusiveLock;-><init>(Ljava/lang/String;Z)V

    iget-object v1, v2, Landroidx/room/concurrent/ExclusiveLock;->threadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, v2, Landroidx/room/concurrent/ExclusiveLock;->fileLock:Landroidx/room/concurrent/FileLock;

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2}, Landroidx/room/concurrent/FileLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move v4, v5

    goto/16 :goto_6

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :try_start_1
    iget-boolean v6, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    if-nez v6, :cond_7

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/sqlite/SQLiteDriver;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    iget-boolean v6, v0, Landroidx/room/RoomConnectionManager;->isConfigured:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v6, :cond_3

    :try_start_2
    iput-boolean v4, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    invoke-static {v0, p0}, Landroidx/room/RoomConnectionManager;->access$configureDatabase(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-boolean v5, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    goto :goto_3

    :catchall_1
    move-exception p0

    iput-boolean v5, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    throw p0

    :cond_3
    iget-object v5, v0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v5, Landroidx/room/DatabaseConfiguration;

    iget-object v5, v5, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v6, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v5, v6, :cond_4

    const-string v5, "PRAGMA synchronous = NORMAL"

    invoke-static {p0, v5}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v5, "PRAGMA synchronous = FULL"

    invoke-static {p0, v5}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :goto_2
    invoke-static {p0}, Landroidx/room/RoomConnectionManager;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0, p0}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    if-eqz v2, :cond_6

    :try_start_4
    iget-object v0, v2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-object v3, v2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    goto :goto_4

    :catchall_2
    move-exception p0

    iput-object v3, v2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_7
    :try_start_7
    const-string p0, "Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    if-eqz v2, :cond_9

    :try_start_8
    iget-object v0, v2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Ljava/nio/channels/FileChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iput-object v3, v2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    goto :goto_5

    :catchall_4
    move-exception p0

    iput-object v3, v2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    throw p0

    :cond_9
    :goto_5
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p0

    :goto_6
    if-eqz v4, :cond_a

    :try_start_b
    throw p0

    :catchall_6
    move-exception p0

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open database \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Was a proper path / name used in Room\'s database builder?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokensImpl;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public remove(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokensImpl;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public declared-synchronized setDrawList(Ljava/util/ArrayList;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    array-length p1, p1

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/tinder/StateMachine;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    const-string v1, "[ "

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    invoke-static {v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "] "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    iget-object v0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokensImpl;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
