.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $id:J

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iput-wide p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->$id:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->$id:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteById$2;->$id:J

    const/4 p0, 0x1

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;-><init>(JI)V

    invoke-static {p1, v0, p0, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_0
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method
