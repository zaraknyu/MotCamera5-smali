.class public Landroidx/sqlite/db/SimpleSQLiteQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/saveable/Saver;
.implements Landroidx/media3/datasource/DataSource$Factory;
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;
.implements Landroidx/sqlite/db/SupportSQLiteQuery;
.implements Landroidx/window/layout/WindowInfoTracker;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# static fields
.field public static mRefCnt:I


# instance fields
.field public final synthetic $r8$classId:I

.field public bindArgs:Ljava/lang/Object;

.field public query:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    .line 16
    new-instance p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;-><init>()V

    .line 17
    const-string v0, "BatteryHandler"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/ThermalHandler;-><init>()V

    .line 19
    const-string v0, "ThermalHandler"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 20
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void

    .line 22
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 23
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 24
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void

    .line 25
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    const/4 v0, 0x0

    .line 27
    invoke-direct {p1, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 28
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 29
    new-instance p1, Landroidx/collection/LongSparseArray;

    const/4 v0, 0x0

    .line 30
    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void

    .line 32
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0xe -> :sswitch_2
        0x16 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 68
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 71
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 38
    new-instance v0, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v0}, Landroidx/compose/runtime/OffsetApplier;-><init>()V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroidx/core/view/MenuHostHelper;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    .line 45
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p0, v0, :cond_1

    if-eqz p2, :cond_1

    .line 46
    iget-object p0, p2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p0, Landroid/media/LoudnessCodecController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/LoudnessCodecController;->addMediaCodec(Landroid/media/MediaCodec;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 3

    const/4 p2, 0x5

    iput p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 48
    new-instance p2, Landroidx/room/concurrent/FileLock;

    invoke-direct {p2, p1}, Landroidx/room/concurrent/FileLock;-><init>(Landroid/view/View;)V

    .line 49
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 52
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 53
    sget-wide v0, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 54
    new-instance p2, Landroidx/compose/ui/text/AnnotatedString;

    const-string v2, ""

    invoke-direct {p2, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;J)V

    .line 55
    sget p1, Landroidx/compose/ui/text/input/ImeOptions;->$r8$clinit:I

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v0, 0x1c

    invoke-direct {p2, v0, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    .line 58
    new-instance p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 59
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 37
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/FoldingFeature$State;)V
    .locals 2

    const/16 v0, 0xf

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 8
    new-instance v0, Landroidx/room/concurrent/FileLock;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/room/concurrent/FileLock;-><init>(I)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 4
    iput p3, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p2}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x6

    iput v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    .line 63
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 65
    iget-object v2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    :goto_0
    if-eqz v0, :cond_a

    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v1

    :goto_1
    if-eqz v4, :cond_9

    instance-of v6, v4, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v6, :cond_2

    check-cast v4, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    invoke-static {v4, v3}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;->onGloballyPositioned(Landroidx/compose/ui/node/NodeCoordinator;)V

    goto :goto_4

    :cond_2
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_8

    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v7, v2

    :goto_2
    const/4 v8, 0x1

    if-eqz v6, :cond_7

    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_3

    move-object v4, v6

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v4, v1

    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_7
    if-ne v7, v8, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_1

    :cond_9
    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_a
    :goto_5
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_6
    if-ge v2, p0, :cond_b

    aget-object v1, v0, v2

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public static declared-synchronized isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z
    .locals 5

    const-class v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    invoke-virtual {v3}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->getLimitedFeatures()Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v3, v3, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized isHandlerLimited(Ljava/lang/String;)Z
    .locals 3

    const-class v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v2, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    iget-boolean p0, p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized limitFeatures(Ljava/lang/String;Z)V
    .locals 3

    const-class v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v2, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v2

    if-eq p1, v2, :cond_0

    iget-object v2, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    iput-boolean p1, p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z

    iget-object p0, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-virtual {p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->onChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized registerListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V
    .locals 2

    const-class v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized unregisterListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V
    .locals 2

    const-class v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 1

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iget p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;->bind(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 2

    new-instance v0, Landroidx/media3/datasource/DefaultDataSource;

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/OffsetApplier;

    invoke-virtual {p0}, Landroidx/compose/runtime/OffsetApplier;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V

    return-object v0
.end method

.method public dequeueInputBufferIndex()I
    .locals 2

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0

    return p0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 3

    :cond_0
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    return v0
.end method

.method public detachOutputSurface()V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->detachOutputSurface()V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzs;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/room/ObservedTableVersions;

    invoke-virtual {p0}, Landroidx/room/ObservedTableVersions;->get()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    check-cast p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    invoke-direct {v1, v0, p0}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;)V

    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getInt(ILjava/lang/String;)I
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSql()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 13

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/DownUpDetector;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/Error;

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    iget v2, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    iget p0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    iget-object v3, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/16 v4, 0x207

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    iget-object v5, v0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v6, v4, Landroidx/core/graphics/Insets;->top:I

    iget v7, v4, Landroidx/core/graphics/Insets;->right:I

    iget v8, v4, Landroidx/core/graphics/Insets;->left:I

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    iget-boolean v12, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz v12, :cond_0

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v9

    iput v9, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v9, p0

    :cond_0
    iget-boolean p0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-eqz p0, :cond_2

    if-eqz v6, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    add-int v10, p0, v8

    :cond_2
    iget-boolean p0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-eqz p0, :cond_4

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    add-int v11, v1, v7

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v1, v8, :cond_5

    iput v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v1, v2

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-boolean v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-eqz v6, :cond_6

    iget v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v6, v7, :cond_6

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v1, v2

    :cond_6
    iget-boolean v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    if-eq v6, v4, :cond_7

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1, v10, p0, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p0, v0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-eqz p0, :cond_9

    iget p1, v3, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    :cond_9
    if-nez v12, :cond_b

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    return-object p2

    :cond_b
    :goto_4
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight()V

    return-object p2
.end method

.method public onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;Ljava/nio/ByteBuffer;)V
    .locals 5

    iget-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFrameNum:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-virtual {v0}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->updateGpsDateFovParams()V

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameUV:Ljava/nio/ByteBuffer;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mParams:Lcom/motorola/camera/arcsoft/StellarTrackParams;

    invoke-static {v1, v4, v0, v3}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->interpolateParams(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/motorola/camera/arcsoft/StellarTrackParams;Z)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameUV:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->getPhotoSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameY:Ljava/nio/ByteBuffer;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mLastFrameUV:Ljava/nio/ByteBuffer;

    move-object v2, v0

    :cond_1
    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/tasks/zzb;->onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->deinitSt()V

    :cond_2
    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CLOSED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_3
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSeekFinished()V
    .locals 2

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    return-void
.end method

.method public popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .locals 4

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v1, :cond_4

    iget v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v3, p2

    and-int/2addr v2, v3

    iput v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    iget-object p2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    if-ne p2, v3, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    :goto_0
    and-int/lit8 v2, v2, 0xc

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x0

    iput p0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    iput-object v0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iput-object v0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    sget-object p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {p0, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putInt(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putLong(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queueInputBuffer(IIIJ)V
    .locals 7

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v6, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public queueSecureInputBuffer(ILandroidx/media3/decoder/CryptoInfo;JI)V
    .locals 7

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/media/MediaCodec;

    iget-object v3, p2, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v2, 0x0

    move v1, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterLayoutListener()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    const/16 v1, 0x23

    :try_start_0
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    const/16 v3, 0x21

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    if-lt v2, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/core/view/MenuHostHelper;->removeMediaCodec(Landroid/media/MediaCodec;)V

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    return-void

    :goto_1
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v3, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/core/view/MenuHostHelper;->removeMediaCodec(Landroid/media/MediaCodec;)V

    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    throw v2
.end method

.method public releaseOutputBuffer(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public releaseOutputBuffer(IJ)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v4, v3, v1

    sget-object v5, Landroidx/collection/ArraySetKt;->DELETED:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aput-object v5, v3, v1

    iput-boolean v2, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    sget-object p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {p1, p0}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public restore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public save(Landroidx/compose/runtime/saveable/SaveableHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    sub-long/2addr v1, v4

    const-wide/16 v6, 0x4e20

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v1, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    const/4 v1, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v1

    move-wide v10, v6

    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_e

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v12, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v12, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->access$100(I[B)I

    move-result v8

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v8, v13, :cond_0

    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v2}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v1, v14, v6

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v1, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v14

    cmp-long v1, v14, p2

    if-lez v1, :cond_2

    cmp-long v0, v10, v6

    if-nez v0, :cond_1

    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-wide v2, v14

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0

    :cond_1
    int-to-long v0, v3

    add-long v10, v4, v0

    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6

    :cond_2
    move-wide v10, v14

    const-wide/32 v14, 0x186a0

    add-long/2addr v14, v10

    cmp-long v1, v14, p2

    if-lez v1, :cond_3

    iget v0, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    int-to-long v0, v0

    add-long v10, v4, v0

    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6

    :cond_3
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move v3, v1

    :cond_4
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    const/16 v14, 0xa

    if-ge v8, v14, :cond_5

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v14

    if-ge v14, v8, :cond_6

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-ge v8, v9, :cond_7

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_7
    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v14, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->access$100(I[B)I

    move-result v8

    const/16 v14, 0x1bb

    if-ne v8, v14, :cond_9

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v14

    if-ge v14, v8, :cond_8

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_9
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v9, :cond_d

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v14, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->access$100(I[B)I

    move-result v8

    if-eq v8, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v8, v14, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v8, v8, 0x8

    if-eq v8, v12, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    const/4 v14, 0x2

    if-ge v8, v14, :cond_c

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v15, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v15, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :cond_d
    :goto_2
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    goto/16 :goto_0

    :cond_e
    cmp-long v0, v10, v6

    if-eqz v0, :cond_f

    int-to-long v0, v1

    add-long v12, v4, v0

    new-instance v8, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v9, -0x2

    invoke-direct/range {v8 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v8

    :cond_f
    sget-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v0
.end method

.method public setOnFrameRenderedListener(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;I)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synchronized"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterLayoutListener()V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public visitMethod(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/String;)Landroidx/work/WorkQuery;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/WorkQuery;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "asString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Landroidx/work/WorkQuery;-><init>(Landroidx/sqlite/db/SimpleSQLiteQuery;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;)V

    return-object v0
.end method

.method public zze()Lcom/google/android/play/core/splitinstall/testing/zzc;
    .locals 2

    iget-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zzc;

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, v1, p0}, Lcom/google/android/play/core/splitinstall/testing/zzc;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null splitInstallErrorCodeByModule"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Property \"splitInstallErrorCodeByModule\" has not been set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
