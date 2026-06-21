.class public final Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

.field public static final synthetic _next$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic _state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:J

.field public final synthetic array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final capacity:I

.field public final mask:I

.field public final singleConsumer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_next$volatile"

    const-class v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_state$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVE_FROZEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    iput-boolean p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const p0, 0x3fffffff    # 1.9999999f

    const-string v0, "Check failed."

    if-gt p2, p0, :cond_1

    and-int p0, p1, p2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 14

    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/high16 v1, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v1, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1

    const-wide/high16 p0, 0x2000000000000000L

    and-long/2addr p0, v3

    cmp-long p0, p0, v7

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v3

    const/16 v2, 0x1e

    shr-long/2addr v5, v2

    long-to-int v9, v5

    add-int/lit8 v5, v9, 0x2

    iget v10, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v5, v10

    and-int v6, v1, v10

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v5, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    const v6, 0x3fffffff    # 1.9999999f

    iget-object v11, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v5, :cond_4

    and-int v5, v9, v10

    invoke-virtual {v11, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    const/16 v0, 0x400

    iget v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    if-lt v2, v0, :cond_3

    sub-int/2addr v9, v1

    and-int v0, v9, v6

    shr-int/lit8 v1, v2, 0x1

    if-le v0, v1, :cond_0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v1, v9, 0x1

    and-int/2addr v1, v6

    const-wide v5, -0xfffffffc0000001L    # -3.1050369248997324E231

    and-long/2addr v5, v3

    int-to-long v12, v1

    shl-long v1, v12, v2

    or-long/2addr v5, v1

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p0

    if-eqz p0, :cond_8

    and-int p0, v9, v10

    invoke-virtual {v11, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object p0, v2

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/high16 v3, 0x1000000000000000L

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object p0

    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v4, :cond_6

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    iget v3, v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;->index:I

    if-ne v3, v9, :cond_6

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_5

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_8
    move-object p0, v2

    goto/16 :goto_0
.end method

.method public final close()Z
    .locals 12

    :goto_0
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v4, 0x2000000000000000L

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    return v6

    :cond_0
    const-wide/high16 v10, 0x1000000000000000L

    and-long/2addr v10, v2

    cmp-long v1, v10, v8

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    or-long/2addr v4, v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    move-object p0, v1

    goto :goto_0
.end method

.method public final next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 10

    :goto_0
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v4, 0x1000000000000000L

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_1

    :cond_0
    or-long/2addr v4, v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p0

    if-eqz p0, :cond_4

    move-wide v2, v4

    :goto_1
    sget-object p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    new-instance v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    iget v5, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    mul-int/lit8 v5, v5, 0x2

    iget-boolean v6, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v2

    long-to-int v5, v5

    const-wide v6, 0xfffffffc0000000L

    and-long/2addr v6, v2

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v6, v6

    :goto_2
    iget v7, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int v8, v5, v7

    and-int/2addr v7, v6

    if-eq v8, v7, :cond_3

    iget-object v7, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    invoke-direct {v7, v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;-><init>(I)V

    :cond_2
    iget v8, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v8, v5

    iget-object v9, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v8, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const-wide v5, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v5, v2

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p0, v1

    goto :goto_0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    :cond_0
    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v7, 0x1000000000000000L

    and-long v4, v2, v7

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v0

    :cond_1
    const-wide/32 v11, 0x3fffffff

    and-long v4, v2, v11

    long-to-int v0, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v13, 0x1e

    shr-long/2addr v4, v13

    long-to-int v4, v4

    iget v5, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v4, v5

    and-int v13, v0, v5

    const/4 v14, 0x0

    if-ne v4, v13, :cond_2

    goto :goto_0

    :cond_2
    iget-object v15, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v15, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-boolean v5, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-nez v4, :cond_3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v7

    instance-of v7, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v7, :cond_4

    :goto_0
    return-object v14

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const v7, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v7

    const-wide/32 v7, -0x40000000

    and-long v18, v2, v7

    move-wide/from16 v20, v7

    int-to-long v7, v0

    or-long v18, v18, v7

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-wide/from16 v28, v18

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-wide/from16 v4, v28

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v15, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v18

    :cond_5
    move-object/from16 v1, p0

    if-eqz v19, :cond_0

    :cond_6
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v24

    and-long v2, v24, v11

    long-to-int v0, v2

    and-long v2, v24, v16

    cmp-long v2, v2, v9

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_7
    and-long v2, v24, v20

    or-long v26, v2, v7

    sget-object v22, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v23, v1

    invoke-virtual/range {v22 .. v27}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    move-object/from16 v2, v23

    if-eqz v1, :cond_8

    iget-object v1, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v2, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v0, v2

    invoke-virtual {v1, v0, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, v14

    :goto_2
    if-nez v1, :cond_6

    return-object v18

    :cond_8
    move-object v1, v2

    goto :goto_1
.end method
