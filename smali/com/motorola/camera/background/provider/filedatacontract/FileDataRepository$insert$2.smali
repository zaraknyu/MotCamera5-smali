.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $file:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iput-object p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->$file:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->$file:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    if-eqz p1, :cond_0

    const-string v0, "fileData"

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;->$file:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;Lcom/motorola/camera/background/provider/filedatacontract/FileData;I)V

    const/4 p0, 0x1

    invoke-static {v0, v2, p0, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
