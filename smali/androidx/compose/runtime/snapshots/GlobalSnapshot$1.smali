.class public final Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;

.field public static final INSTANCE$1:Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;-><init>(II)V

    sput-object v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;->INSTANCE:Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;

    new-instance v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;-><init>(II)V

    sput-object v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;->INSTANCE$1:Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
