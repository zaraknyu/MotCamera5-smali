.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/SecureDataHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/SecureDataHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->this$0:Lcom/motorola/camera/SecureDataHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->this$0:Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;-><init>(Lcom/motorola/camera/SecureDataHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->this$0:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p1, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
