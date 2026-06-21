.class public final Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/io/Serializable;

.field public L$2:Landroidx/room/coroutines/Pool;

.field public L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$4:Lkotlin/coroutines/CoroutineContext;

.field public L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/room/coroutines/ConnectionPoolImpl;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->this$0:Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->this$0:Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-virtual {v1, p1, v0, p0}, Landroidx/room/coroutines/ConnectionPoolImpl;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
