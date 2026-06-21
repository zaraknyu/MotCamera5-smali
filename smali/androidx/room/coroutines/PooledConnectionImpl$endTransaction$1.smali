.class public final Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Landroidx/room/coroutines/PooledConnectionImpl;

.field public L$1:Landroidx/room/coroutines/ConnectionWithLock;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/room/coroutines/PooledConnectionImpl;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->label:I

    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/room/coroutines/PooledConnectionImpl;->endTransaction(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
