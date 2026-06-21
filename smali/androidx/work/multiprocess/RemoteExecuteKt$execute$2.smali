.class public final Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Landroid/os/IInterface;

.field public L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$3:Landroid/os/IBinder;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Landroidx/work/multiprocess/RemoteExecuteKt;->execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
